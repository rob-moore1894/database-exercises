USE adlister;

CREATE TABLE IF NOT EXISTS users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  email VARCHAR(200) NOT NULL,
  password VARCHAR(200) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE ad (
  ad_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR(500) DEFAULT NULL,
  price DOUBLE UNSIGNED DEFAULT 0.00,
  description TEXT DEFAULT NULL,
  PRIMARY KEY(ad_id),
  FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE categories(
  cat_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  cat_name VARCHAR(200) NOT NULL,
  PRIMARY KEY(cat_id)
);

CREATE TABLE ad_category(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ad_id INT UNSIGNED NOT NULL,
  cat_id INT UNSIGNED NOT NULL,
  FOREIGN KEY(ad_id) REFERENCES ad(ad_id),
  FOREIGN KEY(cat_id) REFERENCES categories(cat_id),
  PRIMARY KEY(id)
);

INSERT INTO categories(cat_name)
VALUES('AUTO PARTS'),
  ('TOOLS'),
  ('JEWELRY'),
  ('ELECTRONICS'),
  ('FREE'),
  ('ANTIQUES'),
  ('BOOKS'),
  ('FURNITURE'),
  ('NEW'),
  ('USED'),
  ('HOME'),
  ('OUTDOORS'),
  ('SPORTS'),
  ('INDOOR');

INSERT INTO users(first_name, last_name, email, password) VALUES
  ('Maverick', 'Pascal', 'spursfan210@email.com', 'spursfan'),
  ('Toni', 'Braxton', 'unbreakmyheart@email.com', 'unbreakmyheart'),
  ('Jack', 'Frost', 'thesnowman@email.com', 'nosunplease'),
  ('Lori', 'Hernandez', 'thecakelady@email.com', 'cupcakesforever');

INSERT INTO ad(user_id, title, price, description) VALUES
  (3, 'Yellow Rubber Duck', NULL, 'Yellow rubber duck for kid''s bath time or just to decorate your space. Yellow with orange beak and cute lil blue eyes'),
  (1, 'LIKE NEW RADIATOR FOR SALE', 325.00, 'Bought a radiator for my car, with warranty, radiator I had was good, needed a fan instead. Reselling this as I do not have the need for it. Price negotiable.'),
  (4, 'Collection of College Books', 150.50, 'Have a collection of college books purchased for Intro to Physics, Bio-Chem, Intro and Intermediate lessons for the Italian Language. Tried to resell to campus bookstore, would not accept them due to discontinued courses- reselling to anyone willing to buy. Will sell separately if needed, contact me to let me know which books you''re interested in.'),
  (2, 'Lightly used Sofa Set - Custom made, Brown Leather', 5000, 'Selling a custom made sofa set- moving and cannot take with us. Ivory stitching with hand embellishments on arms. Includes a large room sofa, 1 loveseat, and 3 separate recliner chairs with remote and touch screen recline and massage options, seat warmers and optional pull out side tables and cupholders. Beautiful set used in theater room, well worth the price.');

INSERT INTO ad_category(ad_id, cat_id) VALUES
  (1,5),
  (1,9),
  (1, 14),
  (2, 1),
  (2, 10),
  (3, 7),
  (3, 10),
  (3, 14),
  (4, 8),
  (4, 10),
  (4, 11),
  (4, 14);