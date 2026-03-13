-- Exercice 2

--  1.

DESC section;
SELECT * FROM section;

-- 2.

SELECT * FROM course;

-- 3. 

SELECT title, dept_name 
FROM course;

-- 4. 

SELECT dept_name, budget
FROM department; 

-- 5 

SELECT name, dept_name
FROM teacher;

-- 6 

SELECT name
FROM teacher
WHERE salary > 65000;

-- 7

SELECT name
FROM teacher
WHERE salary between 55000 AND 85000;

-- 8. 

SELECT DISTINCT dept_name 
FROM teacher;

-- 9 

SELECT name
FROM teacher 
WHERE dept_name = 'Comp. Sci.' AND salary > 65000;

-- 10 

SELECT *
FROM section 
WHERE semester = 'Spring'
AND year = 2010;

-- 11. 

SELECT title
FROM course
WHERE dept_name = 'Comp. Sci.' AND credits > 3;


-- 12. 

SELECT t.name, t.dept_name, d.building
FROM teacher t, department d
WHERE t.dept_name = d.dept_name;

-- 13

SELECT name
FROM student, takes, course 
WHERE student.ID = takes.ID
AND takes.course_id = course.course_id
AND course.dept_name = 'Comp. Sci.'