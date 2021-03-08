# Cypress Download Example using CFML

Downloading dynamically generated file fails when Cypress does not 
detect page load #14789

This is for https://github.com/cypress-io/cypress/issues/14789



## Setup

This will start a ColdFusion instance in Docker on port 8080. There 
is a simple form which can be used for Cypress test.

docker-compose up

App: http://localhost/
CFAdmin: http://localhost/CFIDE/administrator
CFAdmin login is admin / password.

## Cypress



## Notes
The "profile": "development" in server.json allows access to CFAdmin.



