-- =====================================
-- SPOTIFY BEHAVIORAL ANALYTICS QUERIES
-- Creates analytical views for Power BI dashboard
-- =====================================


USE spotify_analytics;


-- =====================================
-- ARTIST PERFORMANCE ANALYSIS
-- Calculates total plays and listening time by artist
-- =====================================

CREATE VIEW vw_artist_performance AS

SELECT
    s.artist_name,
    COUNT(*) AS total_plays,
    ROUND(SUM(l.minutes_played), 2) AS total_minutes

FROM listening_history l

JOIN songs s
ON l.song_id = s.song_id

GROUP BY s.artist_name;


-- Preview artist performance results

SELECT *
FROM vw_artist_performance

LIMIT 10;



-- =====================================
-- MONTHLY LISTENING TRENDS
-- Calculates listening hours by month
-- =====================================

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


-- Preview monthly trends

SELECT *
FROM vw_monthly_trends;



-- =====================================
-- YEARLY LISTENING TRENDS
-- Calculates listening hours and plays by year
-- =====================================

CREATE VIEW vw_yearly_trends AS

SELECT
    YEAR(timestamp) AS year,
    ROUND(SUM(minutes_played) / 60, 2) AS listening_hours,
    COUNT(*) AS total_plays

FROM listening_history

GROUP BY YEAR(timestamp)

ORDER BY year;


-- Preview yearly trends

SELECT *
FROM vw_yearly_trends;



-- =====================================
-- DASHBOARD SUMMARY METRICS
-- Creates KPI calculations for Power BI
-- =====================================

CREATE VIEW vw_dashboard_summary AS

SELECT
    ROUND(SUM(minutes_played) / 60, 2) AS total_hours,
    COUNT(*) AS total_plays,
    COUNT(DISTINCT song_id) AS unique_songs,
    ROUND(AVG(minutes_played), 2) AS avg_minutes_per_play,
    ROUND(SUM(skipped) / COUNT(*) * 100, 2) AS skip_percentage

FROM listening_history;
