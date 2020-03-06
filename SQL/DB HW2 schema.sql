CREATE TABLE homebuilder(
  hID INT,
  hName VARCHAR(20),
  hStreet INT,
  hCity VARCHAR(20),
  hZip INT,
  hPhone VARCHAR(20),
  PRIMARY KEY (hID)
);

CREATE TABLE model(
  hID INT,
  mID INT,
  mName VARCHAR(20),
  sqft INT,
  story INT,
  PRIMARY KEY (hID, mID)
);

CREATE TABLE subdivision(
  sName VARCHAR(30),
  sCity VARCHAR(20),
  sZip INT,
  PRIMARY KEY (sName)
);

CREATE TABLE offered(
  sName VARCHAR(20),
  hID INT,
  mID INT,
  price INT,
  PRIMARY KEY (sName, hID, mID)
);

CREATE TABLE lot(
  sName VARCHAR(20),
  lotNum INT,
  lStAddr INT,
  lSize INT, 
  lPremium INT,
  PRIMARY KEY (sName, lotNum)
);

CREATE TABLE sold(
  sName VARCHAR(20),
  lotNum INT,
  hID INT,
  mID INT,
  status VARCHAR(20),
  PRIMARY KEY (sName, lotNum)
);

INSERT INTO homebuilder VALUES (1, "Bob", 123, "Atlanta", 30303, "7705556789");
INSERT INTO homebuilder VALUES (2, "Mike", 321, "LA", 91537, "8616453156");
INSERT INTO homebuilder VALUES (3, "Josh", 213, "NY", 45618, "1891651358");
INSERT INTO homebuilder VALUES (4, "Amy", 312, "Chicago", 75468, "4861548916");
INSERT INTO homebuilder VALUES (5, "Susan", 231, "Miami", 15318, "6184181375");

INSERT INTO model VALUES (1, 1, "modelName1", 1000, 1);
INSERT INTO model VALUES (1, 2, "modelName2", 2000, 2); 
INSERT INTO model VALUES (1, 3, "modelName3", 3000, 3); 
INSERT INTO model VALUES (2, 1, "modelName4", 1500, 1); 
INSERT INTO model VALUES (4, 1, "modelName5", 2500, 1); 

INSERT INTO subdivision VALUES ("HighSky", "Atlanta", 30303); 
INSERT INTO subdivision VALUES ("SweetWater", "LA", 94171);
INSERT INTO subdivision VALUES ("Shady Creek", "NY", 15676);
INSERT INTO subdivision VALUES ("Lakeside", "Chicago", 71651);
INSERT INTO subdivision VALUES ("Green Hills", "Atlanta", 16481);

INSERT INTO offered VALUES ("HighSky", 1, 1, 80000);
INSERT INTO offered VALUES ("HighSky", 1, 2, 125000);
INSERT INTO offered VALUES ("SweetWater", 1, 3, 115000);
INSERT INTO offered VALUES ("SweetWater", 2, 1, 120000);
INSERT INTO offered VALUES ("Green Hills", 4, 1, 110000);

INSERT INTO lot VALUES ("HighSky", 1, 456, 50, 300);
INSERT INTO lot VALUES ("HighSky", 2, 466, 50, 300);
INSERT INTO lot VALUES ("SweetWater", 1, 789, 60, 400);
INSERT INTO lot VALUES ("SweetWater", 2, 799, 60, 400);
INSERT INTO lot VALUES ("Green Hills", 1, 258, 75, 450);

INSERT INTO sold VALUES ("HighSky", 1, 1, 1, "sold");
INSERT INTO sold VALUES ("HighSky", 2, 4, 1, "available");
INSERT INTO sold VALUES ("SweetWater", 1, 1, 3, "sold");
INSERT INTO sold VALUES ("SweetWater", 2, 4, 1, "available");
INSERT INTO sold VALUES ("Green Hills", 1, 2, 1, "available");



SELECT MT3.hID, MT3.mID, MT3.sqft FROM (
  SELECT * FROM ( SELECT MT1.hID, MT1.mID, M.sqft 
  FROM( SELECT S.hID, S.mID FROM sold S WHERE S.sName="HighSky" AND S.status="sold") MT1, model M 
  WHERE MT1.hID=M.hID AND MT1.mID=M.mID) MT2) MT3
INNER JOIN (
  SELECT MT2.hID, MT2.mID, MAX(sqft) sqft FROM ( SELECT MT1.hID, MT1.mID, M.sqft 
    FROM( SELECT S.hID, S.mID FROM sold S WHERE S.sName="HighSky" AND S.status="sold") MT1, model M 
    WHERE MT1.hID=M.hID AND MT1.mID=M.mID) MT2
  GROUP BY MT2.hID, MT2.mID) MT4
ON MT3.hID=MT4.hID AND MT3.mID=MT4.mID AND MT3.sqft=MT4.sqft