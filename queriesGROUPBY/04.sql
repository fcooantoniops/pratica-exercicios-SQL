SELECT MAX(jobs.salary),roles.name 
FROM jobs 
JOIN roles ON jobs."roleId" = roles.id 
GROUP BY roles.name 
ORDER BY MAX(jobs.salary);