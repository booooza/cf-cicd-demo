# Cloud Foundry React CI/CD Demo
[![Build Status](https://travis-ci.org/booooza/cf-react-cicd-demo.svg?branch=master)](https://travis-ci.org/booooza/cf-react-cicd-demo)
[![Coverage Status](https://coveralls.io/repos/github/booooza/cf-react-cicd-demo/badge.svg?branch=master)](https://coveralls.io/github/booooza/cf-react-cicd-demo?branch=master)

## Development
```
npm install
npm start
npm run build
```

## Initial deployment 
```bluemix cf push Blue -n cf-react-cicd-demo --docker-image booooza/cf-react-cicd-demo:latest```