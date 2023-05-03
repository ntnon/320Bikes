CREATE TABLE blue_3(
   last_seen       VARCHAR(25) NOT NULL PRIMARY KEY
  ,id              INTEGER  NOT NULL
  ,name            VARCHAR(21) NOT NULL
  ,bikes_in_use    INTEGER  NOT NULL
  ,bikes_available INTEGER  NOT NULL
  ,longitude       NUMERIC(14,12) NOT NULL
  ,latitude        NUMERIC(15,12) NOT NULL
  ,geopoint        VARCHAR(19) NOT NULL
  ,type            BIT  NOT NULL
);
INSERT INTO blue_3(last_seen,id,name,bikes_in_use,bikes_available,longitude,latitude,geopoint,type) VALUES ('2023-05-02T17:49:44+02:00',73,'Station Gent-St. P. (St.-Denijslaan)',52,16,3.709667000000,51.034889000000,'51.034889, 3.709667',1);
