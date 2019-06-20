#!/usr/bin/env bash

# This script and a supporting web.xml file should be placed in the
# configuration repository at the path defined by the config.importPath
# property in the custom.yaml file.

echo "Customizing the AM web application"
echo ""

echo "Available environment variables:"
echo ""
env
echo ""

# Copy the web.xml file that is in the same directory as this script to the
# webapps/openam/WEB-INF directory
cp /git/config/${CONFIG_PATH}/web.xml ${CATALINA_HOME}/webapps/openam/WEB-INF

echo "Finished customizing the AM web application"