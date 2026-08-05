# Spotify Behavioral Analytics Dashboard

## Overview

End-to-end analytics project using SQL (MySQL Workbench), Power BI, and Python to transform Spotify Extended Streaming History data into actionable behavioral insights.

This project analyzes listening behavior, engagement patterns, and music preferences by building an analytics pipeline from raw streaming data to an interactive dashboard.

---

## Business Problem

Streaming platforms generate large amounts of behavioral data, but raw listening history is difficult to interpret without cleaning, structuring, and visualization.

This project explores how analytics tools can transform raw Spotify listening records into insights such as:

- Listening trends over time
- Most played artists
- User engagement patterns
- Skip behavior
- Overall listening habits

---

## Solution

The project follows an end-to-end analytics workflow:

```text
Spotify Extended Streaming History
          |
          v
Python Data Cleaning
          |
          v
MySQL Database Design
          |
          v
SQL Analytics Queries
          |
          v
Power BI Dashboard
```
The final dashboard provides interactive insights into listening behavior and engagement metrics.

---

## Technology Stack

- SQL (MySQL Workbench)
- Power BI
- Python (Google Colab)
- Pandas
- GitHub

---

## Database Design

The relational database consists of:

- Songs
- Listening History
- Calendar
- Spotify Staging

The database structure supports analytical queries for trends, artist performance, and engagement metrics.

---

## Dashboard Features

The Power BI dashboard includes:

- Total listening hours
- Total plays
- Unique songs
- Skip rate
- Top 10 artists by listening time
- Yearly listening trends
- Monthly listening trends

---

## Key Metrics

- 69,763 Spotify listening records analyzed
- 1,390+ total listening hours
- Listening behavior analyzed across multiple years
- Engagement metrics including plays, unique songs, and skip rate

---

## Project Structure

```text
spotify-behavioral-analytics/

├── sql/
│   ├── create_database.sql
│   ├── create_tables.sql
│   └── analysis_queries.sql
│
├── data/
│   └── README.md
│
├── Spotify Listening Analytics Model.pbix
├── Spotify Listening Analytics Model.png
└── README.md
```

---

## Dashboard Preview

Power BI dashboard analyzing Spotify listening behavior and trends.

![Spotify Dashboard](./Spotify%20Listening%20Analytics%20Model.png)

---

## Data Privacy

Raw Spotify streaming files are excluded because they contain personal listening information.

The dataset was cleaned using Python, transformed into relational tables using SQL, and analyzed through Power BI.

---

## Future Improvements

Potential enhancements include:

- Build automated data pipelines for future Spotify exports
- Add additional user behavior metrics
- Create predictive models for listening preferences
- Expand dashboard filtering capabilities

---

## Author

Esom Nwachukwu
