CREATE TABLE blue_4(
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
INSERT INTO blue_4(last_seen,id,name,bikes_in_use,bikes_available,longitude,latitude,geopoint,type) VALUES ('2023-05-02T17:48:24+02:00',178,'Station Wondelgem',2,5,3.719586000000,51.089503000000,'51.089503, 3.719586',1);
INSERT INTO blue_4(last_seen,id,name,bikes_in_use,bikes_available,longitude,latitude,geopoint,type) VALUES ('2023-05-02T17:45:11+02:00',175,'Station Merelbeke',5,3,3.764767000000,51.019906000000,'51.019906, 3.764767',1);
INSERT INTO blue_4(last_seen,id,name,bikes_in_use,bikes_available,longitude,latitude,geopoint,type) VALUES ('2023-05-02T17:47:30+02:00',176,'Station Drongen',0,8,3.654975000000,51.047438000000,'51.047438, 3.654975',1);
