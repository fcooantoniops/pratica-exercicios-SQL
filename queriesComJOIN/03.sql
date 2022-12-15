SELECT courses.id,users.name,courses.name AS course,schools.name AS school,educations."endDate" FROM educations 
JOIN users ON users.id=educations."userId"
JOIN schools ON educations."schoolId"=schools.id
JOIN courses ON educations."courseId"=courses.id
WHERE users.id=30 AND educations.status='finished';