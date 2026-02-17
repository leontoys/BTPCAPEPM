# To compile CDL to DDL
cds compile db/schema.cds --to sql
cds compile db --to sql
- <field> : Assosciation to <entity> will create a field <field_key>,
- but when we do backlinking Association to <entity> on it won't create
- also association also won't create

# mixin
- key word for loose coupling , lazy loading, load data only when requested

# Steps to connect to sqlite db
- add { "cds": { "requires": {
   "db": {
      "kind": "sqlite",
      "credentials": { "url": "db.sqlite" } 
   }
}}}
- then do cds deploy
- connect using sql tools in BAS

# Steps to connect to HANA CLOUD DB during design time from BAS
- use booster to create sap hana cloud subscription and allow connection from all ips
- cf login
- cds add hana
- npm install
- cds build --production
- cds deploy --to hana:mickey
- cdsrc-private.jso contains connection details to container
- cds watch --hybrid profile

# To configure roles
- Application Security Descriptor Configuration Syntax
- https://help.sap.com/docs/SAP_HANA_PLATFORM/cf8b4c5847374960a68b55cb86eae013/6d3ed64092f748cbac691abc5fe52985.html?locale=en-US
- cds add xsuaa
- npm install
- copy and update xs-security.json
- create mock strategy and test users with roles in package.json

# Deploy App to Cloud
- cds add mta
- cds add xsuaa
- npm install
- right click and build mta
- right click and deploy mtar
- "cf dmol -i da518ead-0a08-11f1-af6d-eeee0a990376" to check logs
- cf logs <modulename> --recent
- get token url, append /oauth/token in, client id, secret from BTP and 
- call GET from POSTMAN tool using above
- Create role collection in BTP and assign to user
- cds bind -2 mycapapp-auth - to bind our local BAS dev to deployed BTP so that we can test locally

# App Router
- cd mycapapp/app to go inside app folder where we create app router
- npm init creates pacage.json
- npm install @sap/approuter
- in the package.json add start script ie, start : node node_modules/@sap/approuter/approuter.js
now we need to add config to tell app router about end points
- create xs-app.json inside (app) folder  and create routes inside
- in mta.yaml add ui module
- build mta.yaml and deploy we can do using cf deploy inside mta_archives folder
- we can add more users and give role collection and test

# Configure Identity Services
- Add Cloud Identity Services in instances and subscription
- https://bulkresizephotos.com/ for resizing logo
- To use buildworkzone it is mandadtory to use Cloud Identity 
- Create new user in User Management with different identity
- Establish Trust to new domain
- Give role collection to new user

# labeling
- i18n file to be created in db folder
- GEThttps://port4004-workspaces-ws-yebxs.us10.trial.applicationstudio.cloud.sap/liyon.po.managepo/index.html?sap-ui-language=ml



