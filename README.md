# Spotify Behavioral Analytics Dashboard

End-to-end analytics project using Python, MySQL, SQL, and Power BI to transform Spotify Extended Streaming History data into actionable behavioral insights.

## Overview

This project analyzes Spotify Extended Streaming History data to understand listening behavior, user engagement, and music preference trends.

The project follows an end-to-end analytics pipeline:

1. Data preparation and cleaning using Python
2. Relational database design and storage using MySQL
3. SQL analysis to generate insights
4. Interactive dashboard development using Power BI

The final dashboard provides insights into listening patterns, top artists, yearly and monthly trends, and user engagement metrics.

---

## Technology Stack

- SQL (MySQL Workbench)
- Power BI
- Python (Google Colab)
- Pandas
- GitHub

---

## Project Objectives

* Analyze personal Spotify listening behavior and engagement patterns
* Identify top artists and listening trends over time
* Transform raw streaming data into structured relational tables
* Build an interactive dashboard to communicate analytical insights

---

## Data Pipeline

### 1. Data Cleaning & Preparation (Python)

* Processed Spotify Extended Streaming History JSON files
* Cleaned and transformed raw streaming records
* Created calculated fields including:

  * Listening minutes
  * Year
  * Month
  * Season
  * Semester

### 2. Database Design (MySQL)

Created a relational database structure containing:

* Songs table
* Listening history table
* Calendar table

Used SQL to manage relationships and prepare data for analysis.

### 3. Data Visualization (Power BI)

Built an interactive Spotify analytics dashboard featuring:

* Total listening hours
* Total plays
* Unique songs
* Skip rate
* Top 10 artists by listening time
* Yearly listening trends
* Monthly listening trends

---

## Database Structure

The database follows a relational model:

```
Songs
 |
 |
Listening History
 |
 |
Calendar
```

---

## Dashboard Preview

Power BI dashboard analyzing Spotify listening behavior and trends.

![Spotify Dashboard](spotify_dashboard.png)



---

## Data Privacy

This project uses Spotify Extended Streaming History data.

Raw Spotify streaming files are excluded from this repository because they contain personal listening information.

The dataset was cleaned and transformed using Python before being loaded into MySQL for SQL analysis and Power BI visualization.
