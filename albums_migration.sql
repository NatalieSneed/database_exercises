DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
  id int PRIMARY KEY AUTO_INCREMENT,
  artist varchar(200) NOT NULL REFERENCES artists (id),
  name char NOT NULL,
  release_date int NOT NULL,
  sales int NOT NULL,
  genre char NOT NULL
);

