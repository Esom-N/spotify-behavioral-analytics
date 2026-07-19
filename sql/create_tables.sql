USE spotify_analytics;


CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    song_name VARCHAR(255),
    artist_name VARCHAR(255),
    album_name VARCHAR(255)
);


CREATE TABLE listening_history (
    listening_id INT PRIMARY KEY,
    song_id INT,
    date DATE,
    minutes_played DECIMAL(5,2),
    platform VARCHAR(100),
    
    FOREIGN KEY (song_id)
    REFERENCES songs(song_id)
);


CREATE TABLE calendar (
    date DATE PRIMARY KEY,
    year INT,
    month VARCHAR(20),
    season VARCHAR(20),
    semester VARCHAR(20)
);
