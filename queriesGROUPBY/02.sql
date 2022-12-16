SELECT "userId" as "id",COUNT(*) as educations 
FROM educations
GROUP BY "userId";