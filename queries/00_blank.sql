-- SELECT * FROM Colleges WHERE City='Cambridge';
-- SELECT Name, (Students*1000) AS Population FROM Colleges WHERE City='Cambridge';
-- SELECT FirstName, LastName, Birthdate, timestampdiff(YEAR,Birthdate,now()) AS Age FROM Students
-- SELECT FirstName, LastName, Region FROM Students Where Region='TX'


-- PATTERNS
-- % match multiple characters
-- _ matches one character
-- SELECT * FROM Students WHERE Email LIKE '%gmail%' OR Phone LIKE '%541%'

-- INNER JOIN
-- SELECT S.StudentID, S.FirstName, S.LastName, C.CollegeID, C.Name FROM Students S INNER JOIN Colleges C ON S.CollegeID = C.CollegeID
-- SELECT S.Salary FROM Students S INNER JOIN Colleges C ON S.CollegeID = C.CollegeID WHERE C.Name='MIT'

-- SELF JOIN
-- SELECT S.StudentID, S.FirstName, S.LastName, S.FriendID, concat(S2.FirstName,' ',S2.LastName) AS Buddy FROM Students S INNER JOIN Students S2 ON S.FriendID = S2.StudentID 

-- MULTIPLE JOIN
SELECT * FROM Books B JOIN CollegeBooks CB ON B.BookID = CB.BookID JOIN Colleges C ON C.CollegeID = CB.CollegeID