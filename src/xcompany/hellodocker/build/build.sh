#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Load the xBuild System
source /usr/local/include/xbuild/loader

# Load the Environment Variables to the current Session
loadvars

# POWERTIP: Use the Snippet xb-prepare and xb-prepare-lang to Prepare your Image
# Prepare the Image. If you want another Packages installed use snippet xb-prepare-lang
prepare --with-node

header "Build Services ..."
build

# Cleanup the Build and the Image. It should called when you finished your Work
cleanup

header "That's it. xBuild has finished his work. Have a nice Day"
