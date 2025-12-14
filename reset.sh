#!/bin/bash
sudo systemctl stop blog_inotifywatch
sudo systemctl daemon-reload
sudo systemctl start blog_inotifywatch
sudo journalctl -f -u blog_inotifywatch.service
