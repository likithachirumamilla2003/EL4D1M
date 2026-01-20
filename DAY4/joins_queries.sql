USE sample1;
SHOW TABLES;
SELECT 
    match_id,
    home_team,
    away_team,
    total_goals
FROM football_matches_2024_2025
WHERE total_goals > 3;

SELECT home_team, away_team, total_goals
FROM football_matches_2024_2025
ORDER BY total_goals DESC
LIMIT 10;

SELECT competition_name, COUNT(*) AS total_matches
FROM football_matches_2024_2025
GROUP BY competition_name;

SELECT home_team, SUM(total_goals) AS goals
FROM football_matches_2024_2025
GROUP BY home_team
ORDER BY goals DESC;

SELECT 
    m1.match_id,
    m1.home_team,
    m2.away_team,
    m1.total_goals
FROM football_matches_2024_2025 m1
INNER JOIN football_matches_2024_2025 m2
ON m1.match_id = m2.match_id;

SELECT 
    m1.match_id,
    m1.home_team,
    m2.away_team
FROM football_matches_2024_2025 m1
LEFT JOIN football_matches_2024_2025 m2
ON m1.match_id = m2.match_id;










