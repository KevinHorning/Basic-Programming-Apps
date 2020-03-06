# Answers to challenging SQL practice questions




# Schema for 3 tables and some sample data

CREATE TABLE TableA (
  Userid INT NOT NULL,
  Username VARCHAR(20) NOT NULL,
  Pageviews INT NOT NULL,
  Visits INT NOT NULL,
  PRIMARY KEY (Userid)
);

INSERT INTO TableA VALUES (1, "Jenna", 45, 2);
INSERT INTO TableA VALUES (2, "Rebecca", 8, 5);
INSERT INTO TableA VALUES (3, "Max", 33, 9);
INSERT INTO TableA VALUES (4, "Jamie", 8, 4);
INSERT INTO TableA VALUES (5, "Lauren", 2, 5);
INSERT INTO TableA VALUES (6, "Sam", 3, 2);
INSERT INTO TableA VALUES (7, "Parker", 3, 2);
INSERT INTO TableA VALUES (8, "James", 7, 12);
INSERT INTO TableA VALUES (9, "Rain", 2, 1);
INSERT INTO TableA VALUES (10, "Ronald", 67, 2);

CREATE TABLE TableB (
  Section VARCHAR(20) NOT NULL,
  Userid INT NOT NULL,
  PRIMARY KEY (Userid)
);

INSERT INTO TableB VALUES ("Sports", 1);
INSERT INTO TableB VALUES ("News", 2);
INSERT INTO TableB VALUES ("Arts", 3);
INSERT INTO TableB VALUES ("Sports", 4);
INSERT INTO TableB VALUES ("News", 5);
INSERT INTO TableB VALUES ("Business", 6);
INSERT INTO TableB VALUES ("Arts", 7);
INSERT INTO TableB VALUES ("Politics", 8);
INSERT INTO TableB VALUES ("News", 9);
INSERT INTO TableB VALUES ("News", 10);

CREATE TABLE TableC (
  Referrer VARCHAR(20) NOT NULL,
  Userid INT NOT NULL,
  PRIMARY KEY (Userid)
);

INSERT INTO TableC VALUES ("Google", 1);
INSERT INTO TableC VALUES ("Facebook", 2);
INSERT INTO TableC VALUES ("Twitter", 3);
INSERT INTO TableC VALUES ("Outlook", 8);
INSERT INTO TableC VALUES ("Twitter", 9);
INSERT INTO TableC VALUES ("Google", 10);




# Practice Problems:

Question 1: Write a query to find the number of records in TableA.

Answer: SELECT COUNT(Userid) FROM TableA


Question 2: Write a query to count how many observations in TableA have a missing value in at least one column.

Answer: SELECT COUNT(Userid) FROM TableA WHERE Userid IS NOT NULL OR Username IS NOT NULL OR Pageviews IS NOT NULL OR Visits IS NOT NULL;


Question 3: Write a query to display Userid, Pageviews, and Section.

Answer: SELECT TableA.Userid, TableA.Pageviews, TableB.Section FROM TableA INNER JOIN TableB ON TableA.Userid = TableB.Userid;


Question 4: Write a query to find total pageviews by section.

Answer: SELECT Section, SUM(Pageviews) AS TotalViews   FROM (SELECT TableB.Section, TableA.Pageviews FROM TableB  INNER JOIN TableA WHERE TableA.Userid = TableB.Userid) DerivedTable   GROUP BY Pageviews;


Question 5: Write a query to display the top two sections in terms of total pageviews.

Answer: SELECT Section FROM (  SELECT Section, SUM(Pageviews) AS TotalViews FROM (    SELECT TableB.Section, TableA.Pageviews FROM TableB      INNER JOIN TableA WHERE TableA.Userid = TableB.Userid) DerivedTable  GROUP BY Pageviews) DerivedTable2  ORDER BY TotalViews LIMIT 2;


Question 6: Write a query to display a list of Userids for users who had more visits than the average.

Answer: SELECT Userid FROM TableA WHERE Pageviews > ( SELECT AVG(Pageviews) FROM TableA )


Question 7: Write a query to find total Pageviews from users whose Username has an 'a' as the second letter.

Answer: SELECT SUM(Pageviews) FROM (  SELECT Pageviews FROM (SELECT    Username, Pageviews, SUBSTRING( Username, 2, 1) Second FROM TableA) DerivedTable     WHERE Second LIKE "e") DerivedTable2;


Question 8: Write a query to find total Pageviews from users whose Username has an "as" as any letter.

Answer: SELECT * FROM TableA WHERE Username LIKE '%as%'


Question 9: Write a query to display a list of Userids and Sections for users who appear in TableA and TableC.

Answer: SELECT TableB.Section FROM TableB   RIGHT JOIN   ( SELECT TableA.Userid FROM TableA  RIGHT JOIN TableC ON TableA.Userid = TableC.Userid ) UseridMatches  ON TableB.Userid = UseridMatches.Userid;

