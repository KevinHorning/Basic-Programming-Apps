/* Queries for sample functional requirements of the Orbit App */

/* Regristration: creates a new row in person table */
INSERT INTO Person (personID, username, password, nickname, email, accountCreatedDate) 
    VALUES (7, 'username', 'password', 'nickname', 'sampleaddress@gmail.com', 'datetime of creation');

/* Login: verifies that there is a row in Person table with the given credentials */
SELECT * FROM Person WHERE username = 'username' AND password = 'password';

/* Create Activity: creates a new row in the Activity and Person-Activity tables */
INSERT INTO Activity (activityID, categoryID, activityName, isGroupActivity) 
    VALUES (currentKey, 'inputCategoryID', 'inputActivityName', 1);
INSERT INTO `Person-Activity` (`person-activityID`, personID, activityID) VALUES (currentID+1, personID, activityID);

/* Session Storing: creates a row in the session table when a session is completed */
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) 
    VALUES (1, NULL, 1, '2020-04-18 16:35:33', '2020-04-18 17:02:54', 25, 5, 1.09);

/* Goal Creation: creates a row in the Goal table when a goal is made */
INSERT INTO Goal (goalID, personID, activityID, goalName, goalDescription, goalStatus) 
    VALUES (1, 1, 1, 'Web Dev Project', 'Finish the project', 'Incomplete');

/* Badge Rewarded: when a user completes a goal, a row is created in the badge field and the goal row is updated */
INSERT INTO Badge (badgeID, personID, goalID, badgeName,badgeDescription, dateAwarded) 
    VALUES (1, 1, 2, 'Goal Completed', 'Home Page Completed', '2020-04-18 15:47:42');
UPDATE Goal SET goalStatus = 'Complete' WHERE goalID = 2;

/* Joining a Group Session: when a user joins a group session, a new SyncedSession row is created and Session rows for each participant */
INSERT INTO SyncedSession (syncedSessionID, numberParticipants) VALUES (ID, current# + 1);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (1, NULL, 1, '2020-04-18 16:35:33', '2020-04-18 17:02:54', 25, 5, 1.09);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (1, NULL, 1, '2020-04-18 16:35:33', '2020-04-18 17:02:54', 25, 5, 1.09);

/* Sending a Message: creates a row in the Message table */
INSERT INTO ChatMessage (messageID, `person-groupChatID`, messageContent, sentTime) VALUES (1, 1, 'u finish the portrait page yet?', '2020-04-18 16:02:41');


/* Creates a new user */
INSERT INTO Person (personID, username, password, nickname, email, accountCreatedDate) 
    VALUES (7, 'username', 'password', 'nickname', 'sampleaddress@gmail.com', 'datetime of creation');

/* Edits the name of a category */
UPDATE Category SET categoryName = 'inputName' WHERE categoryID = 1;

/* Gets all activities under a category */
SELECT activityName FROM Activity AS A, Category AS C 
    WHERE A.categoryID = C.categoryID AND categoryName = 'inputName';

/* Gets the number of sessions a user has had */
SELECT COUNT(numberCycles) FROM (SELECT personID, numberCycles FROM `Person-Activity` AS PA, Session AS S
    WHERE PA.`person-activityID` = S.`person-activityID`) TABLE1 WHERE personID = 1;

/* Gets total number of cycles completed by a user */
SELECT SUM(numberCycles) FROM (SELECT personID, numberCycles FROM `Person-Activity` AS PA, Session AS S 
    WHERE PA.`person-activityID` = S.`person-activityID`) TABLE1;

/* Gets most recent activity of a specific user */
SELECT activityName FROM (
    SELECT activityName, endTime FROM `Person-Activity` AS PA, Session AS S, Activity AS A
        WHERE PA.`person-activityID` = S.`person-activityID` AND PA.activityID = A.activityID AND PA.personID = 5
        ORDER BY endTime DESC) TABLE1 
    LIMIT 1;

/* Searches a string in a user's messages */
SELECT messageContent FROM (
    SELECT messageContent FROM ChatMessage AS CM, `Person-GroupChat` AS PGC 
        WHERE CM.`person-groupChatID` = PGC.`person-groupChatID` AND PGC.personID = 1) TABLE1 
    WHERE messageContent LIKE '%page%';

