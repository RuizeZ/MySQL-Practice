-- reward users who have been around the longest(find top 5 oldest users)
SELECT * FROM users ORDER BY created_at LIMIT 5;

-- what day of the week do most users register on?
SELECT 
	dayname(created_at) as weekday, count(*) as amount
FROM users
GROUP BY weekday
ORDER BY amount DESC;

-- find users who have nover posted a photo
SELECT username, image_url FROM users LEFT JOIN photos ON users.id = photos.user_id where photos.image_url IS NULL;

-- user who has the most like on a singel photo
SELECT users.username, photos.user_id, photos.id, count(likes.user_id) as count FROM photos INNER JOIN likes on photos.id = likes.photo_id INNER JOIN users ON photos.user_id = users.id GROUP BY photo_id ORDER BY count DESC;

-- how many tims does the average user post?
SELECT (SELECT count(*) FROM photos) / (SELECT count(*) FROM users);

--  top 5 most used hashtags
SELECT tags.tag_name, photo_tags.tag_id, count(*) as total FROM photo_tags INNER JOIN tags ON tags.id = photo_tags.tag_id GROUP BY tag_id ORDER BY total DESC;

-- find users who liked all the photos
SELECT username, count(*) as total FROM users INNER JOIN likes ON users.id = likes.user_id GROUP BY users.id HAVING total = (SELECT count(*) FROM photos);









 
