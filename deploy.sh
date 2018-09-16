#!/bin/bash

curl -fsSL https://clis.ng.bluemix.net/install/linux | sh
bluemix api https://api.ng.bluemix.net
bluemix login -u $BLUEMIX_USER -p $BLUEMIX_PASS -o $BLUEMIX_ORGANIZATION -s $BLUEMIX_SPACE
bluemix cf push cf-react-cicd-demo --docker-image booooza/cf-react-cicd-demo:latest
