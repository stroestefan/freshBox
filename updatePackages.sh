#!/bin/bash
apt-get autoremove # clears unused packages
apt-get clean
apt-get autoremove --purge
