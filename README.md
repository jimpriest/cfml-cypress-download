# Cypress Download Example using CFML

Downloading dynamically generated file fails when Cypress does not 
detect page load #14789

This is for https://github.com/cypress-io/cypress/issues/14789

This example is using a dynamically delivered file using the ColdFusion cfcontent tag.

### Issue

* Expected behavior: File is downloaded, Cypress does whatever assertion is needed on that file and stops.
* Actual behavior: Cypress successfully clicks link, the file is downloaded but Cypress then hangs ((page load) --waiting for new page to load--) and eventually times out.


## Setup

This will start a ColdFusion instance in Docker on port 88. There 
is a simple download link which can be used for Cypress test.

docker-compose up

App: http://localhost:88/
CFAdmin: http://localhost/CFIDE/administrator
CFAdmin login is admin / password.

If you need to alter the port simply edit the docker-compose.yml file.

## Cypress

Run download.spec.js - this uses utils.js from download recipe and should 
download a test png file.




