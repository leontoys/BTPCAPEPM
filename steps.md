# Steps to connect to HANA CLOUD DB during design time from BAS
- cf login
- cds add hana
- cds build --production
- cds deploy --to hana:mickey