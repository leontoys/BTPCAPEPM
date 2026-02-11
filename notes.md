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
- cf login
- cds add hana
- cds build --production
- cds deploy --to hana:mickey