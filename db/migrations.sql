#Create database
CREATE DATABASE note_data;
\c note_data;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  password_hash VARCHAR(255)
);

CREATE TABLE notes_data (
  id SERIAL PRIMARY KEY,
  message TEXT,
  user_id INTEGER
);
