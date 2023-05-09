CREATE TABLE data_overview(
   company  VARCHAR(55) NOT NULL
  ,full_name  VARCHAR(55) NOT NULL  PRIMARY KEY
  ,short_name VARCHAR(12) NOT NULL
  ,type       VARCHAR(20) NOT NULL
  ,link       VARCHAR(101) NOT NULL

  
);
INSERT INTO data_overview(company, full_name,short_name,type,link) VALUES ('baqme','baqme-deelfietsen-beschikbaarheid-station-gent','baqme_1','electricCargoBikeHub','https://data.stad.gent/explore/dataset/baqme-deelfietsen-beschikbaarheid-station-gent/table/');
INSERT INTO data_overview(company, full_name,short_name,type,link) VALUES ('baqme','baqme','baqme-deelfietsen-stations-locaties-gent','baqme_2','electricCargoBikeHub','https://data.stad.gent/explore/dataset/baqme-deelfietsen-stations-locaties-gent/table/');
INSERT INTO data_overview(company, full_name,short_name,type,link) VALUES ('baqme','baqme-locaties-vrije-deelfietsen-gent','baqme_3','electricCargoBikeHub','https://data.stad.gent/explore/dataset/baqme-locaties-vrije-deelfietsen-gent/table/');
INSERT INTO data_overview(company, full_name,short_name,type,link) VALUES ('blue-bike','blue-bike-deelfietsen-gent-dampoort','blue_1','bikeHub','https://data.stad.gent/explore/dataset/blue-bike-deelfietsen-gent-dampoort/table/');
INSERT INTO data_overview(company, full_name,short_name,type,link) VALUES ('blue-bike','blue-bike-deelfietsen-gent-sint-pieters-m-hendrikaplein','blue_2','bikeHub','https://data.stad.gent/explore/dataset/blue-bike-deelfietsen-gent-sint-pieters-m-hendrikaplein/table/');
INSERT INTO data_overview(company, full_name,short_name,type,link) VALUES ('blue-bike','blue-bike-deelfietsen-gent-sint-pieters-st-denijslaan','blue_3','bikeHub','https://data.stad.gent/explore/dataset/blue-bike-deelfietsen-gent-sint-pieters-st-denijslaan/table/');
INSERT INTO data_overview(company, full_name,short_name,type,link) VALUES ('blue-bike','blue-bike-deelfietsen-merelbeke-drongen-wondelgem','blue_4','bikeHub','https://data.stad.gent/explore/dataset/blue-bike-deelfietsen-merelbeke-drongen-wondelgem/table/');
INSERT INTO data_overview(company, full_name,short_name,type,link) VALUES ('donkey-republic','donkey-republic-deelfietsen-stations-locaties','donkey_1','bikeHub','https://data.stad.gent/explore/dataset/donkey-republic-beschikbaarheid-deelfietsen-per-station/table/');
INSERT INTO data_overview(company, full_name,short_name,type,link) VALUES ('dott','dott-deelfietsen-hubs-gent','dott_1','electricScooterHub','https://data.stad.gent/explore/dataset/dott-deelfietsen-gent/table/');
INSERT INTO data_overview(company, full_name,short_name,type,link) VALUES ('donkey-republic','donkey-republic-beschikbaarheid-deelfietsen-per-station','data_overview','bikes','https://data.stad.gent/explore/dataset/donkey-republic-beschikbaarheid-deelfietsen-per-station/table/');
INSERT INTO data_overview(company, full_name,short_name,type,link) VALUES ('dott','dott-deelfietsen-gent','dott_2','electricScooters','https://data.stad.gent/explore/dataset/dott-deelfietsen-gent/table/');
