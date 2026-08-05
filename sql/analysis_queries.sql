USE spotify_analytics;

CREATE VIEW vw_artist_performance AS

SELECT
    s.artist_name,
    COUNT(*) AS total_plays,
    ROUND(SUM(l.minutes_played),2) AS total_minutes
FROM listening_history l

JOIN songs s
ON l.song_id = s.song_id

GROUP BY s.artist_name;

SELECT *
FROM vw_artist_performance
LIMIT 10;

USE spotify_analytics;

CREATE VIEW vw_monthly_trends AS

SELECT
    MONTH(timestamp) AS month_number,
    MONTHNAME(timestamp) AS month,
    ROUND(SUM(minutes_played) / 60, 2) AS listening_hours
FROM listening_history

GROUP BY
    MONTH(timestamp),
    MONTHNAME(timestamp)

ORDER BY MONTH(timestamp);

SELECT *
FROM vw_monthly_trends;

USE spotify_analytics;

CREATE VIEW vw_yearly_trends AS

SELECT
    YEAR(timestamp) AS year,
    ROUND(SUM(minutes_played) / 60, 2) AS listening_hours,
    COUNT(*) AS total_plays
FROM listening_history

GROUP BY YEAR(timestamp)

ORDER BY year;

SELECT *
FROM vw_yearly_trends;

USE spotify_analytics;

CREATE VIEW vw_dashboard_summary AS

SELECT
    ROUND(SUM(minutes_played) / 60, 2) AS total_hours,
    COUNT(*) AS total_plays,
    COUNT(DISTINCT song_id) AS unique_songs,
    ROUND(AVG(minutes_played), 2) AS avg_minutes_per_play,
    ROUND(SUM(skipped) / COUNT(*) * 100, 2) AS skip_percentage
FROM listening_history;