show databases;
USE temp;


-- QUESTION 1

	        CREATE TABLE envelope(id int, user_id int); 
		CREATE TABLE docs(idnum int, pageseq int, doctext varchar(100)); 
 
			INSERT INTO envelope VALUES 
			  (1,1), 
			  (2,2), 
			  (3,3); 
			 
			INSERT INTO docs(idnum,pageseq) VALUES 
			  (1,5), 
			  (2,6), 
			  (null,0); 
          
			SELECT idnum, pageseq,
			CASE WHEN pageseq > 0 THEN pageseq
			ELSE NULL
			END AS doctext
			FROM docs;


-- QUESTION 2
		CREATE TABLE Users (
			account_number INT PRIMARY KEY,
			name VARCHAR(50) UNIQUE );

		CREATE TABLE Transactions(
			trans_id INT PRIMARY KEY,
			account_number INT,
			amount INT DEFAULT 0,
			transacted_on DATE);

			INSERT INTO Users(account_number,name) VALUES
			(12300001,'Ram'),
			(12300002,'Tim'), 
			(12300003, 'Shyam');

			SELECT * FROM Users;
			INSERT INTO Transactions(trans_id,account_number,amount,transacted_on) VALUES
			(1, 12300001, 8000, '2022-03-01'), 
			(2, 12300001, 8000, '2022-03-01' ),
			(3, 12300001, -3000, '2022-03-02' ),
			(4, 12300002, 4000, '2022-03-12' ),
			(5, 12300003, 7000, '2022-02-07' ),
			(6, 12300003, 7000, '2022-03-07' ),
			(7, 12300003, -4000, '2022-03-11');

			SELECT name  FROM Users WHERE account_number IN
			(SELECT account_number, SUM(amount) AS balance FROM Transactions 
			GROUP BY account_number HAVING SUM(amount)>10000);

-- QUESTION 3

		CREATE TABLE Employee (
			Id INT,
			fname VARCHAR(25),
			lname VARCHAR(25),
			department VARCHAR(25),
			projectId VARCHAR(25),
			address VARCHAR(25),
			dateofbirth VARCHAR(25),
			gender VARCHAR(25));
			
		CREATE TABLE Salary(
			id INT,
			position VARCHAR(25),
			dateofjoining VARCHAR(25), 
			salary VARCHAR(25));
					
			-- Part1 
			SELECT UPPER(fname) AS Employee_name FROM Employee;
			
			-- Part 2
			SELECT Department , COUNT(*) FROM Employee GROUP BY Department HAVING Department ='HR';
			
			-- PART 3
			SELECT SUBSTRING(lname, 1, 4) FROM Employee;
			
			-- PART 4
			CREATE TABLE SampleTable AS SELECT   * FROM Employee;

			-- PART 5
			SELECT fname FROM Employee WHERE fname LIKE 'S%';
			
			-- PART 6
			SELECT gender, COUNT(*) FROM Employee GROUP BY Gender;
			
			-- PART 7 
			SELECT e.Id,e.fname,e.department,s.position
			FROM Employee e
			INNER JOIN Salary s ON e.Id = s.id
			WHERE position='manager';
			
			-- PART 8
			SELECT COUNT(Id) as count,department
			FROM Employee
			GROUP BY department
			ORDER BY count(department);
		   
			-- PART 9
			SELECT Id,COUNT(*)
			FROM Employee
			GROUP BY Id
			HAVING COUNT(*)>1;
   
-- QUESTION 4

		CREATE TABLE Cinema(
			id INT PRIMARY KEY,
			movie VARCHAR(25),
			description VARCHAR(25),
			rating FLOAT);

		INSERT INTO Cinema (id, movie ,description,rating) VALUES
        
							(1, 'War', 'thriller', 8.9 ),
							(2,'Dhakkad', 'action', 2.1) ,
							(3, 'Gippi', 'boring', 1.2 ),
							(4, 'Dangal', 'wrestling', 8.6), 
							(5, 'P.K.', 'Sci-Fi', 9.1);
		SELECT * FROM Cinema;
        
        	SELECT movie,rating FROM Cinema WHERE description not LIKE 'boring' AND id%2=1 ORDER BY rating DESC;
