---
title: My convoluted and homegrown blogging setup
live: false
layout: ../../layouts/MarkdownLayout.astro
date: 2025-12-17
---
### Goal:
- Write blog posts in [obsidian](https://obsidian.md/), which I use for personal journaling
- Marking a blog post as "live" in the front matter publishes it to this website. Unpublish supported as well 

### Constraints:
- I only get 500 builds on my cloudflare worker per month, so I don't want every change to trigger a new push 

### Tools / Architecture
- Obsidian is synced across all of my devices via a combination of iCloud and a [syncthing](https://syncthing.net/) instance that runs on my homelab
- Website is built by a Cloudflare worker that tracks a GitHub repo, pushing to the repository updates the website
- Use `inotifywait` on the homelab to monitor changes to my Obsidian vault's blog directory
- When a change is observed, emit a signal to start a script that checks if a blog post's status or content has changed
- If a change is detected, translate the Obsidian markdown file into a website-ready. Git add, commit, push
- Voila, we have it? 

### Things I need to make work
- `inotifywait` listens to correct directory, sends event to correct location, runs as a systemd service
- Comparison script correctly sees publish events, translator script converts from Obsidian to Astro markdown
- Git commands can be triggered from same script. Probably with a delay?

If you're reading this, it worked :) 

### Implementation notes
- `inotifywatch` triggered a trivial echo in response to obsidian updates `while inotifywait -r ~/syncthing/obsidian/blog -e modify; do { echo "test"; }; done`
- put this as a script into a systemd
```
[Unit]
Description=blog inotifywatch service
After=network_online.target

[Service]
ExecStart=~/projects/website-v2/watch_for_updates.sh

[Install]
WantedBy=mutil-user.target

```
- inspect using `journalctl -f -u blog_inotifywatch.service`,  remember to put the `#!/bin/bash` at the start of your script
- test with an update, at 1:20am, and another update, and another update,another update bb, another, another, another, another, another, update, another, update, update, another woohoo!another update hmm lets see, another woohoo, another update
- trying to get the name of the file that was modified so we don't have to crawl everything. I guess this could also be a cron job :) 
- filename has line breaks, otherwise the current bash script seems to be working. Found that we can update the `--format` flag to handle this better, and use `IFS=` with `"` when referencing to the variable to handle the entire file path update
- copy the obsidian file into the website's directory, now let's `git add` it and check the diff
- checking the `git diff`, timing will be a little interesting, we don't want to send multiple events, but maybe syncthing will handle that cleanly. Can also put a `sleep` call in there. Now it's onto debugging. Continuing debugging
- ...lots of debugging later

### The Final(?) test
- dry runs went well, going to turn on the systemd watcher, edit the next line, and watch this file 1) be added to a git commit and then 2) get pushed when live is clicked
- this line should commit, nope, `fatal: detected dubious ownership`
- fix the above, cross fingers, more git issues, fix them, it's taking awhile, maybe it didn't pick up these changes
- needed to add a HOME to the systemd .service file
- one more edit, let's see, here we go