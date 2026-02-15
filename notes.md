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

# To configure roles
- Application Security Descriptor Configuration Syntax
- https://help.sap.com/docs/SAP_HANA_PLATFORM/cf8b4c5847374960a68b55cb86eae013/6d3ed64092f748cbac691abc5fe52985.html?locale=en-US
- cds add xsuaa
- npm install
- copy and update xs-security.json
- create mock strategy and test users with roles in package.json