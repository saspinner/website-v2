#!/bin/bash

obsidian_dir="/home/sam/syncthing/obsidian/blog/"
website_dir="/home/sam/projects/website-v2/src/pages/posts/"
website_template="../../layouts/MarkdownLayout.astro"
sleep_time=1

add_metadata() {
	awk '--- { print; print "layout: $website_template"; }' "$1"
}

safe_git_add_commit() {
	git pull
	git add "$1"
	git commit -m "auto-adding file $1 via watch_for_updates script"
}

inotifywait -r -m /home/sam/syncthing/obsidian/blog -e close --format "%f%0" |
while IFS= read -r -d '' file; do 
	# this is a fragile point, syncthing file structure could change
	file="${file//$'\n'/}"
  filename="$(printf %s "$file" | cut -d '.' -f 3-4)"
	if [ -z "$filename" ]; then
		continue
	fi

	# replace spaces with underscores
	website_filename="${filename// /_}"
	website_filepath="$website_dir$website_filename"
	#sleep $sleep_time
	cp "$obsidian_dir$filename" "$website_filepath"

	# TODO: remember to add metadata

	# if new file, git diff empty -> git add, commit
	diff=$(echo git diff "$website_filepath")
	echo "result of git diff: $diff"
	if [-z "$diff"]; then
		#safe_git_add_commit "$website_filepath"
		echo "would call safe_git_add_commit $website_filepath"
		
	fi

	if grep -q '^live: true' "$website_filepath"; then
		# push here
		echo "would push changes made to $website_filepath because live is set to true"

	fi
 
	if $(echo "$diff" | grep q '+live: false'); then
		echo "would push changes because $website_filepath had live set to false"
	fi



	# situations where we want to push
	# 1. wasn't alive, is now (git diff has +live: true)
	# 2. was alive, is no longer (git diff has +live: false)
	# 3 is alive, any changes made


done

# follow up taks
# - sync photos
# - prevent accidentally wipes or deletes
# - what happens on file rename? 
