USE spotify_analytics;

-- =====================================
-- SONG TABLE
-- Stores unique song information
-- =====================================

CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    song_name VARCHAR(255),
    artist_name VARCHAR(255),
    album_name VARCHAR(255)
);


-- =====================================
-- LISTENING HISTORY TABLE
-- Stores individual Spotify listening events
-- =====================================

CREATE TABLE listening_history (
    listening_id INT PRIMARY KEY,
    song_id INT,
    timestamp DATETIME,
    minutes_played DECIMAL(5,2),
    platform VARCHAR(100),
    skipped BOOLEAN,
    shuffle BOOLEAN,

    FOREIGN KEY (song_id)
    REFERENCES songs(song_id)
);


-- =====================================
-- CALENDAR TABLE
-- Stores date attributes for time analysis
-- =====================================

CREATE TABLE calendar (
    date DATE PRIMARY KEY,
    year INT,
    month VARCHAR(20),
    season VARCHAR(20),
    semester VARCHAR(20)
);


-- =====================================
-- STAGING TABLE
-- Temporary table used for loading cleaned Spotify data
-- =====================================

CREATE TABLE spotify_staging (
    timestamp DATETIME,
    platform VARCHAR(100),
    ms_played INT,
    song_name VARCHAR(255),
    artist_name VARCHAR(255),
    album_name VARCHAR(255),
    shuffle BOOLEAN,
    skipped BOOLEAN,
    minutes_played DECIMAL(5,2),
    year INT,
    month VARCHAR(20),
    season VARCHAR(20)
);
