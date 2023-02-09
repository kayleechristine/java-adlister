USE adlister_db;

# DROP TABLE IF EXISTS users;
# DROP TABLE IF EXISTS ads;

CREATE TABLE IF NOT EXISTS users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       username VARCHAR(50) NOT NULL,
                       email  VARCHAR(100) NOT NULL,
                       password TEXT NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     user_id INT UNSIGNED NOT NULL,
                     title  VARCHAR(100) NOT NULL,
                     description TEXT NOT NULL,
                     PRIMARY KEY (id),
                     CONSTRAINT fk_user FOREIGN KEY (user_id)
                         REFERENCES users(id)
);

# INSERT INTO users (id, username, email, password)
# VALUES (1, 'kaylee', 'kaylee@email.com', 'password123');
#
# INSERT INTO ads (id, user_id, title, description)
# VALUES (1, 1, 'rubber ducky', 'not water-proof'),
#        (2, 1, 'banana', 'half-eaten');