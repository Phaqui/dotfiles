#!/bin/bash

# Ideally this should be a script that does all the checks, but it will be different for every machine
# (and especially for a virtual machine), so for now, it's just a text document to describe what I do
# in particular to get a fresh debian installation up and running with my settings applied.

# Assume fresh installation of debian netinst with only standard utilities installed.

# (Optional): Add a new user to the system that has sudo rights, so that it is possible to log into the system
#             just incase some automatically started scripts prevents from logging in to the main user.
#             sudo adduser <username>    .. then type in some details or just spam enter..
#             sudo visudo   - add the user just like root is..

# 1) Upgrade to sid
# - check that /etc/sources.list is set correctly.
# - apt-get update && apt-get upgrade

# *: Skip step 2 and 3 if not running a virtual machine...(If done by a script, how to check if this is a virtual machine..?)
# 2) Install dependencies for virtualbox linux additions (are these everything?)
# apt-get install build-essential
# apt-get install linux-headers-$(uname -r)

# 3) MANUAL: Install virtualbox linux additions
# 3.1) From Host OS: Insert VirtualBox additions "cd"..
# 3.2) mount /dev/cdrom /media/cdrom && cd /media/cdrom
# 3.3) sudo the linux script.. Naturally troubleshoot on errors, if there are any..

# 4) Install desired software
# 4.1) GUI: X with i3wm
# 4.2) vim, git, python3, stterm (from repo or tarfile?), ...

#### Personal below

# 5) Download and apply dotfiles (from github)
# 5.1) __ Make sure to make sym links etc ___ -> dotfiles/makesymlinks.sh

# 6) Either download full source of all projects, or use my own server to host them via git... hmmm

# .. Could be an idea to reboot in between some steps, I don't know...

