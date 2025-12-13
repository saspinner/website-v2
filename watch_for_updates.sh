#!/bin/bash

test_fun() {
	touch /home/sam/projects/website-v2/test_worked.txt;
}

# crawl the blog directory for updates, pull anything that has live check marked
pull_live_posts() {
	for f in /home/sam/syncthing/obsidian/blog/*; do
		echo $f
	done 
}


inotifywait -r -m /home/sam/syncthing/obsidian/blog -e close_write --format "%w%f %e" |
while read file action; do 
	echo $file
	#test_fun 
	#pull_live_posts
done
