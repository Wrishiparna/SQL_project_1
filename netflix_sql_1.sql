--Analysis on a NETFLIX dataset--


-- What were the top 10 movies according to IMDB score?

SELECT title,type,imdb_score
FROM title
WHERE imdb_score >= 8.0
AND type ='MOVIE'
ORDER BY imdb_score DESC
LIMIT 10;

-- What were the top 10 shows according to IMDB score?

SELECT title,type,imdb_score
FROM title
WHERE imdb_score >= 8.0
AND type = 'SHOW'
ORDER BY imdb_score DESC
LIMIT 10;

-- What were the bottom 10 movies according to IMDB score? 

SELECT title,type,imdb_score
FROM title
WHERE type ='MOVIE'
ORDER BY imdb_score ASC
LIMIT 10;

-- What were the bottom 10 shows according to IMDB score? 

SELECT title,type,imdb_score
FROM title
WHERE type ='SHOW'
ORDER BY imdb_score ASC
LIMIT 10;

-- What were the average IMDB and TMDB scores for shows and movies? 

SELECT DISTINCT type,
ROUND(AVG(imdb_score),2) AS avg_imdb_score,
ROUND(AVG(tmdb_score),2) AS avg_tmdb_score
FROM title
GROUP BY type;

-- What were the average IMDB and TMDB scores for each production country?

SELECT DISTINCT production_countries, 
ROUND(AVG(imdb_score),2) AS avg_imdb_score,
ROUND(AVG(tmdb_score),2) AS avg_tmdb_score
FROM title
GROUP BY production_countries
ORDER BY avg_imdb_score ASC;

-- What were the average IMDB and TMDB scores for each age certification for shows and movies?

SELECT DISTINCT age_certification, 
ROUND(AVG(imdb_score),2) AS avg_imdb_score,
ROUND(AVG(tmdb_score),2) AS avg_tmdb_score
FROM title
GROUP BY age_certification
ORDER BY avg_imdb_score DESC;

-- What were the 5 most common age certifications for movies?

SELECT age_certification,
COUNT (*) AS age_certification_count
FROM title
WHERE type ='MOVIE'
AND age_certification !='N/A'
GROUP BY age_certification
ORDER BY age_certification_count DESC
LIMIT 5;

-- Who were the top 10 actors that appeared the most in movies/shows? 

SELECT DISTINCT name AS actor_name,
COUNT(*) AS number_of_appearences
FROM credit
WHERE role='ACTOR'
GROUP BY name
ORDER BY number_of_appearences DESC
LIMIT 10;

-- Who were the top 10 directors that directed the most movies/shows? 

SELECT DISTINCT name as director_name, 
COUNT(*) AS number_of_appearences 
FROM credit
WHERE role = 'DIRECTOR'
GROUP BY name
ORDER BY number_of_appearences DESC
LIMIT 10;

-- Calculating the average runtime of movies and TV shows?

SELECT DISTINCT type,
ROUND(AVG(runtime),2) AS avg_runtime
FROM title
GROUP BY type;

-- Finding the titles and  directors of movies released on or after 2020?

SELECT DISTINCT title, name AS director, release_year
FROM title JOIN credit
ON title.id = credit.id
WHERE type = 'MOVIE'
AND release_year >= 2020
AND role = 'DIRECTOR'
ORDER BY release_year DESC;

-- Which genres had the most movies? 

SELECT genres,
COUNT(*) AS movie_count
FROM title
WHERE type ='MOVIE'
GROUP BY genres
ORDER BY movie_count DESC
LIMIT 10;

-- Which genres had the most shows? 

SELECT genres, 
COUNT(*) AS show_count
FROM title
WHERE type = 'SHOW'
GROUP BY genres
ORDER BY show_count DESC
LIMIT 10;

-- Titles and Directors of movies with high IMDB scores (>8.0) and high TMDB scores (>8.0)?

SELECT title, name AS director
FROM title JOIN credit
ON title.id = credit.id
WHERE type = 'MOVIE'
AND imdb_score >8.0
AND tmdb_score >8.0
AND role = 'DIRECTOR';

-- What were the total number of titles for each year? 

SELECT release_year, 
COUNT(*) AS release_count
FROM title 
GROUP BY release_year
ORDER BY release_year DESC;

-- Actors who have starred in the most highly rated movies or shows?

SELECT name AS actor,
COUNT(*) AS number_of_high_rated_content
FROM title JOIN credit
ON title.id = credit.id
WHERE type = 'MOVIE' OR type = 'SHOW'
AND imdb_score>8.0 AND tmdb_score>8.0 AND role= 'ACTOR'
GROUP BY name
ORDER BY number_of_high_rated_content DESC;

-- Which actors played the same character in multiple movies or TV shows? 

SELECT name AS actor, character,
COUNT(DISTINCT title) AS number_of_titles
FROM title JOIN credit
ON title.id=credit.id
WHERE role='ACTOR'
GROUP BY name, character
HAVING COUNT(DISTINCT title)>1;

-- What were the top 5 most common genres in movies?

SELECT genres, 
COUNT(*) AS genre_count
FROM title
WHERE type = 'MOVIE'
GROUP BY genres
ORDER BY genre_count DESC
LIMIT 5;





















































































































































































































