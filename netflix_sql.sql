-- 1. Total Records
SELECT COUNT(*) AS total_records
FROM netflix;

-- 2. Movies vs TV Shows
SELECT type,
       COUNT(*) AS total_titles
FROM netflix
GROUP BY type;

-- 3. Top 10 Countries
SELECT country,
       COUNT(*) AS total_titles
FROM netflix
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- 4. Top 10 Directors
SELECT director,
       COUNT(*) AS total_titles
FROM netflix
WHERE director <> 'Unknown'
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

-- 5. Content Released by Year
	SELECT release_year,
       COUNT(*) AS total_titles
FROM netflix
GROUP BY release_year
ORDER BY release_year;

-- 6. Top Ratings
SELECT rating,
       COUNT(*) AS total_titles
FROM netflix
GROUP BY rating
ORDER BY total_titles DESC;

-- 7. Movie Duration Analysis
SELECT duration,
       COUNT(*) AS total_movies
FROM netflix
WHERE type = 'Movie'
GROUP BY duration
ORDER BY total_movies DESC
LIMIT 10;

-- 8. Netflix Content Added Each Year
SELECT YEAR(STR_TO_DATE(date_added,'%M %d, %Y')) AS added_year,
       COUNT(*) AS total_titles
FROM netflix
GROUP BY added_year
ORDER BY added_year;
