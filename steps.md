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