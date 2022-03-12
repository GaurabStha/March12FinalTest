SELECT d.name as Department, e1.name as Employee, e1.salary as Salary 
FROM employee e1 
INNER JOIN department d on e1.departmentid = d.id 
WHERE 3 > 
(
    SELECT COUNT(DISTINCT salary) 
    FROM employee e2 
    WHERE e2.salary > e1.salary AND e1.departmentid = e2.departmentid
) 
    ORDER BY e1.departmentid, e1.salary DESC;