-- This page will gives information about how to replace NULL in various ways

-- Replacing NULL value using ISNULL() function
SELECT ISNULL(NULL,'No Manager') as Manager

-- Replacing NULL value using CASE Statement
SELECT CASE 
		 WHEN 'SUNEEL' IS NULL THEN 
			'No Manager' 
		ELSE 
			'Manager' 
			END as Manager

-- Replacing NULL value using COALESCE() function
SELECT COALESCE(NULL, 'No Manager') as Manager


-- NOTE: COALESCE() returns the first Non NULL value of a column in each row.
