# freshBox
This repo contains bash scripts that help me set up a new computer. Additionally it outlines steps to customise the UI/other useful things.

New aliases and functions should go in the bashFiles/.bash_aliases and bashFiles/.bash_functions respectively.
The helpaf function displays all custom aliases and a short description of each function.

## Usage 

Run these in order:
- ./configureGitSettings to set up the git username
- ./initialiseConfiguration to overwrite the bash files and install other necessary programs(for now just Sublime Text).

## Steps to take when first opening a new computer

- replace user password
- Install slack from Ubuntu software
- download chrome from the official site and install package
- fix right alt
- ubuntu settings 
- download intellij

If starting a new job:
- slack profile pic and info
- gmail profile pic and info, undo period, shortcuts
- google calendar timezone, working hours
- JIRA profile pic

## Overview of scripts

configureGitSettings.sh -> sets the git username and email, enables autocorrect and sets the cache for the password

initialiseConfiguration -> overwrites the existing bash files and installs sublime

defaultSublime -> makes sublime the default text editor

intellijSettings -> contains custom Keymap

ytToMp3.sh -> custom script to download songs from Youtube

updatePackages -> deletes unused packages and upgrades existing if required

## Useful tools
[SafeEyes](https://slgobinath.github.io/SafeEyes/) - reminder to take breaks

[CopyQ](https://hluk.github.io/CopyQ/) - clipboard manager

[JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/) - easiest way to install & update Intellij

[Peek](https://github.com/phw/peek) - gif screen recordings
