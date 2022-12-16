SELECT users.name as writer,COUNT(testimonials."writerId") as "testimonialCount" 
FROM users 
JOIN testimonials ON users.id = testimonials."writerId" 
WHERE users.id = 435 
GROUP BY users.name;