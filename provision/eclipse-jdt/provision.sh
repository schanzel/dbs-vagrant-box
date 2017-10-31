#!/usr/bin/env bash

sudo apt-get install -y maven
sudo apt-get install -y eclipse-jdt

# Install Eclipse Plugins
#   - Maven Integration for Eclipse (m2e)
eclipse -clean -purgeHistory \
    -application org.eclipse.equinox.p2.director \
    -noSplash \
    -repository http://download.eclipse.org/releases/indigo/ \
    -installIUs \
        org.eclipse.m2e.feature.feature.group
