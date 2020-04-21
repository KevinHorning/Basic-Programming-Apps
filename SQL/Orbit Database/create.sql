/* SQL script for creation of Orbit App tables */

CREATE TABLE 'Person' (
  'personID' INT NOT NULL AUTO_INCREMENT,
  'username' VARCHAR(20) NOT NULL,
  'password' VARCHAR(20) NOT NULL,
  'nickname' VARCHAR(20),
  'email' VARCHAR(60) NOT NULL,
  'accountCreatedDate' DATETIME NOT NULL,
  PRIMARY KEY ('personID'));

CREATE TABLE 'Category' (
  'categoryID' INT NOT NULL,
  'categoryName' VARCHAR(20) NOT NULL,
  PRIMARY KEY ('categoryID'));

CREATE TABLE 'Activity' (
  'activityID' INT NOT NULL,
  'categoryID' INT NOT NULL,
  'activityName' VARCHAR(20) NOT NULL,
  'isGroupActivity' TINYINT(1) NOT NULL,
  PRIMARY KEY ('activityID'),
  FOREIGN KEY ('categoryID') REFERENCES 'Category'('categoryID'));

CREATE TABLE 'Person-Activity' (
  'person-activityID' INT NOT NULL,
  'personID' INT NOT NULL,
  'activityID' INT NOT NULL,
  PRIMARY KEY ('person-activityID'),
  FOREIGN KEY ('personID') REFERENCES 'Person'('personID'),
  FOREIGN KEY ('activityID') REFERENCES 'Activity'('activityID'));

CREATE TABLE 'Goal' (
  'goalID' INT NOT NULL,
  'personID' INT NOT NULL,
  'activityID' INT NULL,
  'goalName' VARCHAR(20) NOT NULL,
  'goalDescription' VARCHAR(100) NOT NULL,
  'goalStatus' VARCHAR(10) NOT NULL,
  PRIMARY KEY ('goalID'),
  FOREIGN KEY ('personID') REFERENCES 'Person'('personID'),
  FOREIGN KEY ('activityID') REFERENCES 'Activity'('activityID'));

CREATE TABLE 'Badge' (
  'badgeID' INT NOT NULL,
  'personID' INT NOT NULL,
  'goalID' INT,
  'badgeName' VARCHAR(20) NOT NULL,
  'badgeDescription' VARCHAR(100) NOT NULL,
  'dateAwarded' DATETIME NOT NULL,
  PRIMARY KEY ('badgeID'), 
  FOREIGN KEY ('personID') REFERENCES 'Person'('personID'),
  FOREIGN KEY ('goalID') REFERENCES 'Goal'('goalID'));

CREATE TABLE 'SyncedSession' (
  'syncedSessionID' INT NOT NULL,
  'numberParticipants' INt NOT NULL,
  PRIMARY KEY ('syncedSessionID'));

CREATE Table 'Session' (
  'sessionID' INT NOT NULL,
  'syncedSessionID' INT,
  'person-activityID' INT NOT NULL,
  'startTime' DATETIME NOT NULL,
  'endTime' DATETIME NOT NULL,
  'focusIntervalLength' INT NOT NULL,
  'breakIntervalLength' INT NOT NULL,
  'numberCycles' FLOAT NOT NULL,
  PRIMARY KEY ('sessionID'),
  FOREIGN KEY ('person-activityID') REFERENCES 'Person-Activity'('person-activityID'),
  FOREIGN KEY ('syncedSessionID') REFERENCES 'SyncedSession'('syncedSessionID'));

CREATE TABLE 'Friendship' (
  'friendshipID' INT NOT NULL,
  'personOneID' INT NOT NULL,
  'personTwoID' INT NOT NULL,
  'friendshipMadeDate' DATETIME NOT NULL,
  PRIMARY KEY ('friendshipID'),
  FOREIGN KEY ('personOneID') REFERENCES 'Person'('personID'),
  FOREIGN KEY ('personTwoID') REFERENCES 'Person'('personID'));

CREATE TABLE 'GroupChat' (
  'groupChatID' INT NOT NULL,
  'groupChatName' VARCHAR(15),
  PRIMARY KEY ('groupChatID'));

CREATE TABLE 'Person-GroupChat' (
  'person-groupChatID' INT NOT NULL,
  'personID' INT NOT NULL,
  'groupChatID' INT NOT NULL,
  PRIMARY KEY ('person-groupChatID'),
  FOREIGN KEY ('personID') REFERENCES 'Person'('personID'),
  FOREIGN KEY ('groupChatID') REFERENCES 'GroupChat'('groupChatID'));
  
CREATE TABLE 'ChatMessage' ( 
  'messageID' INT NOT NULL,
  'person-groupChatID' INT NOT NULL,
  'messageContent' VARCHAR(1000) NOT NULL,
  'sentTime' DATETIME NOT NULL,
  PRIMARY KEY ('messageID'),
  FOREIGN KEY ('person-groupChatID') REFERENCES 'Person-GroupChat'('person-groupChatID'));
