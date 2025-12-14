#!/bin/bash

obsidian_dir="/home/sam/syncthing/obsidian/blog/"
website_dir="/home/sam/projects/website-v2/src/pages/posts/"
website_template="../../layouts/MarkdownLayout.astro"
GIT="git --git-dir=/home/sam/projects/website-v2/.git --work-tree=/home/sam/projects/website-v2"
sleep_time=1

safe_git_add_commit() {
	git pull
	git add "$1"
	git commit -m "auto-adding file $1 via watch_for_updates script"
}

# systemd are run from /, need to change to git directory
cd /home/sam/projects/website-v2 || exit

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

	# if it's a new file, add a commit
	if [ -z "$($GIT ls-files "$website_filepath")" ]; then
		#safe_git_add_commit "$website_filepath"
		echo "would call safe_git_add_commit $website_filepath because no git diff found"
		
	else

		if grep -q '^live: true' "$website_filepath"; then
			# push here
			echo "would push changes made to $website_filepath because live is set to true"

		fi
 
		
		diff=$($GIT diff "$website_filepath")
		if echo "$diff" | grep -q '+live: false'; then
			echo "would push changes because $website_filepath had live set to false"
		fi

	fi

done

# follow up taks
# - sync photos
# - prevent accidentally wipes or deletes
# - what happens on file rename? 
