#!/bin/bash

sed -i 's/gedit/sublime_text/g' /usr/share/applications/defaults.list
sed -i 's/ubuntusdk.desktop/org.gnome.sublime_text.desktop/g' /usr/share/applications/defaults.list
