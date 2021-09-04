CREATE TABLE Users (
    user_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255)
);

INSERT INTO Users (user_id, password, name, email)  
   VALUES ('ramu24', 'RamuK', 'Ramu Kothapalli', 'ram.k@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('sureshV', 'INsta123', 'Suresh Vellore', 'suresh.v@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('someshRocz', 'somuInsta', 'Somesh V', 'somu.v@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('sukesh', 'sukeshIMDB', 'Sukesh', 'sukesh@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('rameshM', 'ramDB', 'Ramesh M', 'ramesh.m@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('mahesh40', 'm40DB', 'Mahesh G V', 'mahesh@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('pavanK', 'pavanK', 'Pavan Kalyan', 'pavan@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('vijay', 'vijayD', 'Vijay D', 'vijay@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('nikhil', 'IMDB123', 'Nikhil V', 'nikhil@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('ajayD', 'pwd@IMDB', 'Ajay D', 'ajay@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('salman', 'salman123', 'Salman Khan', 'salman@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('vikky', 'vikkyIMDB', 'Vikky K', 'vikky@relevel.com');


CREATE TABLE Movies (
    movie_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name varchar(255),
    watch_on varchar(255)
);

INSERT INTO Movies (name, watch_on)  
   VALUES ('Zindagi', 'Prime Videos');
INSERT INTO Movies (name, watch_on)
   VALUES ('Zindagi Na Milegi Dobara', 'Prime Videos');
INSERT INTO Movies (name, watch_on)
   VALUES ('Dear Zindagi', 'Netflix');
INSERT INTO Movies (name, watch_on)
   VALUES ('Don', 'Netflix');
INSERT INTO Movies (name, watch_on)
   VALUES ('Don2', 'Netflix');
INSERT INTO Movies (name, watch_on)
   VALUES ('The Big Bull', 'Hotstar');
INSERT INTO Movies (name, watch_on)
   VALUES ('Laxmi', 'Hotstar');
INSERT INTO Movies (name, watch_on)
   VALUES ('BHUJ', 'Hotstar');
INSERT INTO Movies (name, watch_on)
   VALUES ('Dil Bechara', 'Hotstar');
INSERT INTO Movies (name, watch_on)
   VALUES ('Hungama2', 'Hotstar');
INSERT INTO Movies (name, watch_on)
   VALUES ('The Big Bull', 'Hotstar');
INSERT INTO Movies (name, watch_on)
   VALUES ('Sherni', 'Prime Videos');
INSERT INTO Movies (name, watch_on)
   VALUES ('Kalank', 'Prime Videos');
INSERT INTO Movies (name, watch_on)
   VALUES ('Mumbai Saga', 'Prime Videos');
INSERT INTO Movies (name, watch_on)
   VALUES ('Saina', 'Prime Videos');
INSERT INTO Movies (name, watch_on)
   VALUES ('Batla House', 'Prime Videos');
INSERT INTO Movies (name, watch_on)
   VALUES ('Raazi', 'Prime Videos');

CREATE TABLE Watchlist (
    user_id varchar(255) references Users(user_id),
    movie_id INTEGER references Movies(movie_id),
    PRIMARY KEY(user_id, movie_id)
);

INSERT INTO Watchlist (user_id, movie_id)  
   VALUES ('ramu24', 3);
INSERT INTO Watchlist (user_id, movie_id)  
   VALUES ('ramu24', 4);
INSERT INTO Watchlist (user_id, movie_id)  
   VALUES ('ramu24', 5);
INSERT INTO Watchlist (user_id, movie_id)  
   VALUES ('sureshV', 9);
INSERT INTO Watchlist (user_id, movie_id)  
   VALUES ('sureshV', 11);


CREATE TABLE Ratings (
    user_id varchar(255) references Users(user_id),
    movie_id INTEGER references Movies(movie_id),
    rating DECIMAL,
    PRIMARY KEY(user_id, movie_id)
);

INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('ramu24', 2, 9.5);
INSERT INTO Ratings (user_id, movie_id, rating)    
   VALUES ('ramu24', 3, 6.5);
INSERT INTO Ratings (user_id, movie_id, rating)    
   VALUES ('ramu24', 4, 5.5);
INSERT INTO Ratings (user_id, movie_id, rating) 
   VALUES ('ramu24', 5, 7.4);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('sureshV', 6, 6.2);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('sureshV', 7, 6.2);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('sureshV', 9, 7.2);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('sureshV', 11, 6.2);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('someshRocz', 2, 9.5);
INSERT INTO Ratings (user_id, movie_id, rating)    
   VALUES ('someshRocz', 3, 6.5);
INSERT INTO Ratings (user_id, movie_id, rating)    
   VALUES ('someshRocz', 4, 5.5);
INSERT INTO Ratings (user_id, movie_id, rating) 
   VALUES ('sukesh', 5, 7.4);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('sukesh', 6, 6.2);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('sukesh', 7, 6.2);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('vijay', 9, 7.2);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('vijay', 11, 6.2);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('vijay', 2, 9.5);
INSERT INTO Ratings (user_id, movie_id, rating)    
   VALUES ('ajayD', 3, 6.5);
INSERT INTO Ratings (user_id, movie_id, rating)    
   VALUES ('ajayD', 4, 5.5);
INSERT INTO Ratings (user_id, movie_id, rating) 
   VALUES ('ajayD', 5, 7.4);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('mahesh40', 6, 6.2);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('mahesh40', 7, 6.2);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('mahesh40', 9, 7.2);
INSERT INTO Ratings (user_id, movie_id, rating)  
   VALUES ('mahesh40', 11, 6.2);
   
   
CREATE TABLE Reviews (
    review_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    movie_id INTEGER references Movies(movie_id),
    rating DECIMAL,
    review varchar(2000)
);


INSERT INTO Reviews (user_id, movie_id, rating, review)  
   VALUES ('rameshM', 2, 9.4, 'Great Movie');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('rameshM', 3,6.5, 'One Time Watch');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('rameshM', 4,5.5, 'Not worth your time');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('rameshM', 5, 6, 'Average Movie');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('rameshM', 6,6.2, 'Time pass movie');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('pavanK', 7,5.5, 'Not worth your time');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('pavanK', 9,9.5, 'Super Movie');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('pavanK', 11,7.5, 'Decent Movie');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('pavanK', 2,9.5,'No words, what a movie');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('nikhil', 3,9,'Great Movie');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('nikhil', 4,8.2, 'The acting and the story telling are excellent');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('nikhil', 5,5.5, 'Not a good movie waste of your time');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('nikhil', 6,7.8, 'Old classical, never gets boaring');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('salman', 7,6.5, 'One time watch');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('salman', 9,7, 'Half Decent Movie');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('salman', 11,7.5, 'Decent Movie');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('vikky', 2,7.2, 'Average Movie');
INSERT INTO Reviews (user_id, movie_id, rating, review)
   VALUES ('vikky', 3,6.5, 'One Time Watch');