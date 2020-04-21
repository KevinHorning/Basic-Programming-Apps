/* SQL script for insertion of test data into tables of Orbit App */

INSERT INTO Person (personID, username, password, nickname, email, accountCreatedDate) VALUES (1, 'kevinnumber1', 'MeaganI$Great', 'kev', 'kevinhorning5@gmail.com', '2020-04-18 13:37:22');
INSERT INTO Person (personID, username, password, nickname, email, accountCreatedDate) VALUES (2, 'Meagan', 'ottersRock', 'Libby', 'twinsums@gmail.com', '2020-04-25 23:32:03'); 
INSERT INTO Person (personID, username, password, nickname, email, accountCreatedDate) VALUES (3, 'Maryam', 'girlsplusplus3', NULL, 'maryam@gmail.com', '2020-04-20 09:12:58'); 
INSERT INTO Person (personID, username, password, nickname, email, accountCreatedDate) VALUES (4, 'Ritesh', 'appleIsLife', 'RG', 'riteshv555@gmail.com', '2020-04-18 14:21:41');
INSERT INTO Person (personID, username, password, nickname, email, accountCreatedDate) VALUES (5, 'Naymish', 'tooGood4NCR', NULL, 'naymishv@gmail.com', '2020-04-21 16:51:25');
INSERT INTO Person (personID, username, password, nickname, email, accountCreatedDate) VALUES (6, 'Tlewis523', 'mentorsEverywhere', 'Tim', 'tlewis@gmail.com', '2020-04-21 12-27-00');

INSERT INTO Category (categoryID, categoryName) VALUES (1, 'Web Dev'); 
INSERT INTO Category (categoryID, categoryName) VALUES (2, 'Classes');
INSERT INTO Category (categoryID, categoryName) VALUES (3, 'Database');
INSERT INTO Category (categoryID, categoryName) VALUES (4, 'Orbit App');

INSERT INTO Activity (activityID, categoryID, activityName, isGroupActivity) VALUES (1, 1, 'Final Project', 1);
INSERT INTO Activity (activityID, categoryID, activityName, isGroupActivity) VALUES (2, 1, 'Photography Website', 1);
INSERT INTO Activity (activityID, categoryID, activityName, isGroupActivity) VALUES (3, 2, 'Study Bio Pysch', 0); 
INSERT INTO Activity (activityID, categoryID, activityName, isGroupActivity) VALUES (4, 3, 'Database Report', 1);
INSERT INTO Activity (activityID, categoryID, activityName, isGroupActivity) VALUES (5, 4, 'Registration Page', 0);

INSERT INTO `Person-Activity` (`person-activityID`, personID, activityID) VALUES (1, 1, 1);
INSERT INTO `Person-Activity` (`person-activityID`, personID, activityID) VALUES (2, 4, 1);
INSERT INTO `Person-Activity` (`person-activityID`, personID, activityID) VALUES (3, 1, 2);
INSERT INTO `Person-Activity` (`person-activityID`, personID, activityID) VALUES (4, 4, 2);
INSERT INTO `Person-Activity` (`person-activityID`, personID, activityID) VALUES (5, 2, 3);
INSERT INTO `Person-Activity` (`person-activityID`, personID, activityID) VALUES (6, 1, 4);
INSERT INTO `Person-Activity` (`person-activityID`, personID, activityID) VALUES (7, 5, 4);
INSERT INTO `Person-Activity` (`person-activityID`, personID, activityID) VALUES (8, 6, 4);

INSERT INTO Goal (goalID, personID, activityID, goalName, goalDescription, goalStatus) VALUES (1, 1, 1, 'Web Dev Project', 'Finish the project', 'Incomplete');
INSERT INTO Goal (goalID, personID, activityID, goalName, goalDescription, goalStatus) VALUES (2, 1, 2, 'Website Home Page', 'Finish the home page layout', 'Complete');
INSERT INTO Goal (goalID, personID, activityID, goalName, goalDescription, goalStatus) VALUES (3, 2, 3, 'Prepare for Final', 'Review study guide for 10 hours', 'Incomplete');
INSERT INTO Goal (goalID, personID, activityID, goalName, goalDescription, goalStatus) VALUES (4, 5, NULL , 'Work Hard', 'Complete 50 session cycles', 'Incomplete');

INSERT INTO Badge (badgeID, personID, goalID, badgeName,badgeDescription, dateAwarded) VALUES (1, 1, 2, 'Goal Completed', 'Home Page Completed', '2020-04-18 15:47:42');

INSERT INTO SyncedSession (syncedSessionID, numberParticipants) VALUES (1, 2);
INSERT INTO SyncedSession (syncedSessionID, numberParticipants) VALUES (2, 2);
INSERT INTO SyncedSession (syncedSessionID, numberParticipants) VALUES (3, 3);
INSERT INTO SyncedSession (syncedSessionID, numberParticipants) VALUES (4, 2);

INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (1, NULL, 1, '2020-04-18 16:35:33', '2020-04-18 17:02:54', 25, 5, 1.09);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (2, 1, 1, '2020-04-18 17:02:54', '2020-04-18 18:23:42', 25, 5, 2.71);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (3, 1, 2, '2020-04-18 17:02:54', '2020-04-18 18:23:42', 25, 5, 2.71);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (4, NULL, 1, '2020-04-18 18:23:42', '2020-04-18 20:47:12', 25, 5, 4.78);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (5, NULL, 4, '2020-04-25 23:45:21', '2020-04-26 03:46:51', 45, 15, 4.02);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (6, NULL, 6, '2020-04-21 15:23:05', '2020-04-21 16:55:20', 25, 5, 3.75);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (7, 2, 6, '2020-04-21 16:55:20', '2020-04-21 17:04:33', 25, 5, 0.31);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (8, 2, 7, '2020-04-21 16:55:20', '2020-04-21 17:04:33', 25, 5, 0.31);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (9, 3, 6, '2020-04-21 17:04:33', '2020-04-21 19:47:11', 25, 5, 5.46);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (10, 3, 7, '2020-04-21 17:04:33', '2020-04-21 19:47:11', 25, 5, 5.46);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (11, 3, 8, '2020-04-21 17:04:33', '2020-04-21 19:47:11', 25, 5, 5.46);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (12, 4, 6, '2020-04-21 19:47:11', '2020-04-21 20:18:50', 25, 5, 1.06);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (13, 4, 7, '2020-04-21 19:47:11', '2020-04-21 20:18:50', 25, 5, 1.06);
INSERT INTO Session (sessionID, syncedSessionID, `person-activityID`, startTime, endTime, focusIntervalLength, breakIntervalLength, numberCycles) VALUES (14, NULL, 6, '2020-04-21 20:18:50', '2020-04-21 21:38:02', 25, 5, 2.70);

INSERT INTO Friendship (friendshipID, personOneID, personTwoID, friendshipMadeDate) VALUES (1, 1, 4, '2020-04-18 15:22:51');
INSERT INTO Friendship (friendshipID, personOneID, personTwoID, friendshipMadeDate) VALUES (2, 1, 2, '2020-04-25 23:57:40');
INSERT INTO Friendship (friendshipID, personOneID, personTwoID, friendshipMadeDate) VALUES (3, 1, 5, '2020-04-21 16:58:43');
INSERT INTO Friendship (friendshipID, personOneID, personTwoID, friendshipMadeDate) VALUES (4, 1, 6, '2020-04-21 14:01:21');
INSERT INTO Friendship (friendshipID, personOneID, personTwoID, friendshipMadeDate) VALUES (5, 5, 6, '2020-04-21 17:00:07');
INSERT INTO Friendship (friendshipID, personOneID, personTwoID, friendshipMadeDate) VALUES (6, 2, 4, '2020-04-29 08:54:37');

INSERT INTO GroupChat (groupChatID, groupChatName) VALUES (1, 'Web Dev');
INSERT INTO GroupChat (groupChatID, groupChatName) VALUES (2, 'Database Project');

INSERT INTO `Person-GroupChat` (`person-groupChatID`, personID, groupChatID) VALUES (1, 1, 1);
INSERT INTO `Person-GroupChat` (`person-groupChatID`, personID, groupChatID) VALUES (2, 4, 1);
INSERT INTO `Person-GroupChat` (`person-groupChatID`, personID, groupChatID) VALUES (3, 1, 2);
INSERT INTO `Person-GroupChat` (`person-groupChatID`, personID, groupChatID) VALUES (4, 5, 2);
INSERT INTO `Person-GroupChat` (`person-groupChatID`, personID, groupChatID) VALUES (5, 6, 2);

INSERT INTO ChatMessage (messageID, `person-groupChatID`, messageContent, sentTime) VALUES (1, 1, 'u finish the portrait page yet?', '2020-04-18 16:02:41');
INSERT INTO ChatMessage (messageID, `person-groupChatID`, messageContent, sentTime) VALUES (2, 2, 'naw still working on the little circles', '2020-04-18 16:14:48');
INSERT INTO ChatMessage (messageID, `person-groupChatID`, messageContent, sentTime) VALUES (3, 1, 'ok, lmk if you figure it out', '2020-04-18 16:16:03');
INSERT INTO ChatMessage (messageID, `person-groupChatID`, messageContent, sentTime) VALUES (4, 3, 'im working on the implementation', '2020-04-19 18:23:51');
INSERT INTO ChatMessage (messageID, `person-groupChatID`, messageContent, sentTime) VALUES (5, 5, 'ok, ill make powerpoint', '2020-04-19 18:24:58'); 
