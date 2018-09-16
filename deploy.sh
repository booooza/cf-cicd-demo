#!/bin/bash

# Download IBM Bluemix cli and login
curl -fsSL https://clis.ng.bluemix.net/install/linux | sh
bluemix api https://api.ng.bluemix.net
bluemix login -u $BLUEMIX_USER -p $BLUEMIX_PASS -o $BLUEMIX_ORGANIZATION -s $BLUEMIX_SPACE

# Push new app
bluemix cf push Green -n cf-react-cicd-demo-new --docker-image booooza/cf-react-cicd-demo:latest

# Map original route to new app
bluemix cf map-route Green mybluemix.net -n cf-react-cicd-demo

# TODO: Verify new app is running as expected
# Unmap route to old app
bluemix cf unmap-route Blue mybluemix.net -n cf-react-cicd-demo

# Remove temporary route to new app
bluemix cf unmap-route Green mybluemix.net -n cf-react-cicd-demo-new
bluemix cf delete-route mybluemix.net -n cf-react-cicd-demo-new -f

# Delete old app
bluemix cf delete Blue -f