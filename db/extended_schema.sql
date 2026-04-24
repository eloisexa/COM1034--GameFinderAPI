/* 
 Add your SQL code here to create the new tables for your feature. 
*/

CREATE TABLE IF NOT EXISTS USERS (
    userID         INTEGER PRIMARY KEY,
    username       TEXT    NOT NULL,
    email          TEXT    NOT NULL
);

CREATE TABLE IF NOT EXISTS WISHLISTS (
    wishlistID     INTEGER PRIMARY KEY,
    userID         INTEGER NOT NULL,
    FOREIGN KEY (userID) REFERENCES USERS(userID)
);

CREATE TABLE IF NOT EXISTS WISHLISTITEMS (
    wishlistID     INTEGER  NOT NULL,
    gameID         INTEGER  NOT NULL,
    dateAdded      TEXT     NOT NULL,
    FOREIGN KEY (wishlistID) REFERENCES WISHLISTS(wishlistID)
    FOREIGN KEY (gameID) REFERENCES GAMES(id)
);

CREATE TABLE IF NOT EXISTS RECOMMENDATIONS (
    recommendationID  INTEGER PRIMARY KEY,
    userID            INTEGER NOT NULL,
    gameID            INTEGER NOT NULL,
    FOREIGN KEY (userID) REFERENCES USERS(userID),
    FOREIGN KEY (gameID) REFERENCES GAMES(id)
);

/*
  Add some sample data to the tables you create. 
*/

INSERT INTO USERS (userID, username, email) VALUES (
  (1, 'playerOne', 'player1@email.com'),
  (2, 'gamerGirl', 'gamer2@email.com'),
  (3, 'noobMaster', 'noob3@email.com'),
  (4, 'proGamer', 'pro4@email.com')
);

INSERT INTO WISHLISTS (wishlistID, userID) VALUES (
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4)
);

INSERT INTO WISHLISTITEMS (wishlistID, gameID, dateAdded) VALUES (
  (1, 101, '2026-04-01'),
  (1, 105, '2026-04-02'),
  (1, 106, '2026-04-03'),
  (2, 103, '2026-04-01'),
  (2, 108, '2026-04-04'),
  (3, 102, '2026-04-02'),
  (3, 107, '2026-04-05'),
  (4, 104, '2026-04-03'),
  (4, 101, '2026-04-06')
);

INSERT INTO RECOMMENDATIONS (recommendationID, userID, gameID) VALUES (
  (1, 1, 106),
  (2, 1, 108),
  (3, 2, 101),
  (4, 2, 105),
  (5, 3, 103),
  (6, 3, 104),
  (7, 4, 102),
  (8, 4, 107)
);
