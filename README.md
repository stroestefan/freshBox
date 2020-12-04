# freshBox
This repo contains bash scripts that help me set up a new computer.

New aliases and functions should go in the bashFiles/.bash_aliases and bashFiles/.bash_functions respectively.
The helpaf function displays all custom aliases and a short description of each function.

## Usage 

First run ./initialiseConfiguration to overwrite the bash files and install other necessary programs(for now just Sublime Text).

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
