CREATE TABLE Movies(
Movie_Name VARCHAR(255) primary key,
Language VARCHAR(50),
OTT VARCHAR(100),
Duration INT,
Release_Date DATE,
Box_Office VARCHAR(100),
Producer_name VARCHAR(255),
Director_name VARCHAR(255),
Music_dir Varchar(255),
Foreign key Producer_name references producer(p_name),
Foreign key director_name references director(d_name),
Foreign key language references language(lang_name),
Foreign key ott references ott_platform(ott),
Foreign key Music_dir references music_director(music_dir_name));
INSERT INTO Movies (Movie_Name, Lang_id, OTT, Duration, Release_Date, Box_Office,
Producer_name, Director_name, Music_Director)
VALUES
('Drishyam', 'Malayalam', 'Amazon Prime Video', 160, '2013-12-19', 'High grossing',
'Antony Perumbavoor', 'Jeethu Joseph', 'Gopi Sundar'),
('Premam', 'Malayalam', ‘hotstar’, 157, '2015-05-29', 'Highly successful', 'Anwar
Rasheed', 'Alphonse Puthren', 'Rajesh Murugesan'),
('Bangalore Days', 'Malayalam', ‘zee5’, 171, '2014-05-30', 'Successful', 'Anwar
Rasheed', 'Anjali Menon', 'Gopi Sundar'),
('Charlie', 'Malayalam', 'Netflix', 129, '2015-12-24', 'Commercial success', 'Shebin
Backer’
, 'Martin Prakkat', 'Gopi Sundar'),
('Kumbalangi Nights', 'Malayalam', 'Amazon Prime Video', 135, '2019-02-07',
'Successful', 'Nazriya Nazim', 'Madhu C. Narayanan', 'Sushin Shyam'),
('Ayyappanum Koshiyum', 'Malayalam', ‘Sony liv’, 177, '2020-02-07', 'Blockbuster',
'Ranjith', 'Sachy', 'Jakes Bejoy'),
('Uyare', 'Malayalam', ‘zee5’, 120, '2019-04-26', 'Successful', 'Shenuga', 'Manu
Ashokan', 'Gopi Sundar'),
('Maheshinte Prathikaaram', 'Malayalam', 'Amazon Prime Video', 121, '2016-02-05',
'Commercial success', 'Aashiq Abu', 'Dileesh Pothan', 'Bijibal'),
('Njan Prakashan', 'Malayalam', 'Amazon Prime Video', 131, '2018-12-21',
'Commercial success', 'Sethu Mannarkad', 'Sathyan Anthikad', 'Bijibal'),
('Mumbai Police', 'Malayalam', ‘Sony liv’, 145, '2013-05-03', 'Successful', 'Nisad
Haneefa', 'Roshan Andrews', 'Prashant Pillai');
INSERT INTO Movies (Movie_Name, OTT_Platform, Duration, Release_Date, Box_Office,
Producer, Director, Music_Director)
VALUES
('Baahubali: The Beginning', 'Netflix', 159, '2015-07-10', 'Blockbuster', 'Shobu
Yarlagadda', 'S.S. Rajamouli', 'M. M. Keeravani'),
('Baahubali 2: The Conclusion', 'Netflix', 171, '2017-04-28', 'All-time Blockbuster',
'Shobu Yarlagadda', 'S.S. Rajamouli', 'M. M. Keeravani'),
('Arjun Reddy', 'Amazon Prime Video', 182, '2017-08-25', 'Blockbuster', 'Pranay
Reddy Vanga', 'Sandeep Reddy Vanga', 'Radhan'),
('Rangasthalam', 'Amazon Prime Video', 179, '2018-03-30', 'Blockbuster', 'Naveen
Yerneni', 'Sukumar', 'Devi Sri Prasad'),
('Ala Vaikunthapurramuloo', 'Netflix', 165, '2020-01-12', 'All-time Blockbuster', 'Allu
Aravind', 'Trivikram Srinivas', 'S. Thaman'),
('Jersey', 'Amazon Prime Video', 157, '2019-04-19', 'Commercial success',
'Suryadevara Naga Vamsi', 'Gowtam Tinnanuri', 'Anirudh Ravichander'),
('Eega', NULL, 145, '2012-07-06', 'Blockbuster', 'Sai Korrapati', 'S.S. Rajamouli', 'M. M.
Keeravani'),
('Maharshi', 'Amazon Prime Video', 176, '2019-05-09', 'Commercial success', 'Dil
Raju', 'Vamshi Paidipally', 'Devi Sri Prasad'),
('Srimanthudu', 'Amazon Prime Video', 158, '2015-08-07', 'Blockbuster', 'Y. Naveen',
'Koratala Siva', 'Devi Sri Prasad'),
('Mirchi', 'Amazon Prime Video', 155, '2013-02-08', 'Blockbuster', 'V. Vamsi Krishna
Reddy', 'Koratala Siva', 'Devi Sri Prasad');


CREATE TABLE Directors (
Director_Name VARCHAR(255) primary key,
Date_of_Birth DATE,
Favorite_Genre VARCHAR(100),
Age INT
);
INSERT INTO Directors (Director_Name, Date_of_Birth, Age)
VALUES
('Jeethu Joseph', '1972-11-27', DATEDIFF(CURRENT_DATE(), '1972-11-27') / 365),
'Mystery'),
('Alphonse Puthren', '1984-08-10', DATEDIFF(CURRENT_DATE(), '1984-08-10') /
365), 'Romance'),
('Anjali Menon', '1969-08-30', DATEDIFF(CURRENT_DATE(), '1969-08-30') / 365),
'Drama'),
('Madhu C Narayanan', ‘1978-03-06', DATEDIFF(CURRENT_DATE(), '1978-03-06') /
365), 'Thriller'),
('Sachy', '1972-12-07', DATEDIFF(CURRENT_DATE(), '1972-12-07') / 365), 'Action'),
('Manu Ashokan', ‘1976-12-25', DATEDIFF(CURRENT_DATE(), '1976-12-25') / 365),
'Action'),
('Dileesh Pothan', ‘1979-11-06', DATEDIFF(CURRENT_DATE(), '1979-11-06'') / 365),
'Drama'),
('Sathyan Anthikad', ‘1971-04-20', DATEDIFF(CURRENT_DATE(), '1971-04-20'') / 365),
'Romance'),
('Roshan Andrews', ‘1974-07-26', DATEDIFF(CURRENT_DATE(), '1974-07-26'') / 365),
'Thriller'),
('Martin Prakkat', ‘1983-07-01', DATEDIFF(CURRENT_DATE(), '1983-07-01'') / 365),
'Thriller'),
('S.S Rajamouli', '1973-10-10', DATEDIFF(CURRENT_DATE(), '1973-10-10') / 365),
'Fantasy'),
('Sandeep Reddy Vanga', ‘1978-05-28', DATEDIFF(CURRENT_DATE(), '1978-05-28'') /
365), 'Romance'),
('Trivikram Srinivas', '1972-11-07', DATEDIFF(CURRENT_DATE(), '1972-11-07') /
365), 'Comedy'),
('Sukumar',’1972-08-23', DATEDIFF(CURRENT_DATE(), '1972-08-23') / 365), 'Drama'),
('Gowtam Tinnanuri',’1978-02-19', DATEDIFF(CURRENT_DATE(), '1978-02-19'') /
365), 'Sports'),
('Vamshi Paidipally', ‘1982-06-12'
, DATEDIFF(CURRENT_DATE(), '1982-06-12') /
365),’Action’),
('Koratala Siva', '1975-06-15', DATEDIFF(CURRENT_DATE(), '1975-06-15') / 365),
‘Action’);

-- Producer’s table
CREATE TABLE Producers (
producer_Name VARCHAR(255),
Date_of_Birth DATE,
Age INT AS (YEAR(CURRENT_DATE()) - YEAR(Date_of_Birth)) -
(RIGHT(CURRENT_DATE(), 5) < RIGHT(Date_of_Birth, 5))
);
INSERT INTO Producers (Name, Date_of_Birth)
VALUES
('Antony Perumbavoor', '1968-05-24'),
('Anwar Rasheed', '1974-10-12'),
('Shebin Backer', '1982-07-15'),
('Nazriya Nazim', '1994-12-20'),
('Ranjith', '1962-09-05'),
('Shenuga', '1989-03-28'),
('Aashiq Abu', '1978-04-12'),
('Nisad Haneefa', '1984-11-30'),
('Shobu Yarlagadda', '1971-06-25'),
('Pranay Reddy Vanga', '1978-09-20'),
('Naveen Yerneni', '1985-12-15'),
('Allu Aravind', '1949-01-10'),
('Suryadevara Naga Vamsi', '1980-08-02'),
('Sai Korrapati', '1972-03-18'),
('Dil Raju', '1970-12-18'),
('Y Naveen', '1987-05-30'),
('V. Vamsi Krishna Reddy', '1983-11-15')
;

-- Actors table
CREATE TABLE ActorsActresses (
Name
_ VARCHAR(255) primary key,
Gender VARCHAR(10),
Date_of_Birth DATE,
Age INT AS (YEAR(CURRENT_DATE()) - YEAR(Date_of_Birth)) -
(RIGHT(CURRENT_DATE(), 5) < RIGHT(Date_of_Birth, 5))
);
INSERT INTO ActorsActresses (Name, Gender, Date_of_Birth) VALUES
('Mohanlal', 'Male', '1960-05-21'),
('Nivin Pauly', 'Male', '1984-10-11'),
('Dulquer Salmaan', 'Male', '1986-07-28'),
('Fahadh Faasil', 'Male', '1982-08-08'),
('Prithviraj Sukumaran', 'Male', '1982-10-16'),
('Tovino Thomas', 'Male', '1989-01-21'),
('Ram Charan', 'Male', '1985-03-27'),
('Allu Arjun', 'Male', '1983-04-08'),
('Nani', 'Male', '1984-02-24'),
('Mahesh Babu', 'Male', '1975-08-09'),
('Prabhas', 'Male', '1979-10-23'),
('Vijay Deverakonda', 'Male', '1989-05-09'),
('Meena', 'Female', '1976-09-16'),
('Sai Pallavi', 'Female', '1992-05-09'),
('Nazriya Nazim', 'Female', '1994-12-20'),
('Parvathy Thiruvothu', 'Female', '1988-04-07'),
('Anna Ben', 'Female', '1995-09-10'),
('Gowri Nandha', 'Female', '1991-03-01'),
('Aparna Balamurali', 'Female', '1995-09-11'),
('Nikhila Vimal', 'Female', '1990-02-09'),
('Jayasurya', 'Male', '1978-08-31'),
('Anushka Shetty', 'Female', '1981-11-07'),
('Shalini Pandey', 'Female', '1993-09-23'),
('Samantha Akkineni', 'Female', '1987-04-28'),
('Pooja Hegde', 'Female', '1990-10-13'),
('Shraddha Srinath', 'Female', '1990-09-29'),
('Shruti Haasan', 'Female', '1986-01-28');

-- Genre table
CREATE TABLE Genres (
genre VARCHAR(50) PRIMARY KEY,
description VARCHAR(255)
);
INSERT INTO Genres (genre, description) VALUES
('mystery', 'A genre of fiction that revolves around the solution of a mysterious event,
often a crime or murder.'),
('comedy', 'A genre of film in which the main emphasis is on humor.'),
('drama', 'A genre of narrative fiction (or semi-fiction) intended to be more serious than
humorous in tone.'),
('fantasy', 'A genre of speculative fiction set in a fictional universe, often inspired by
mythology and folklore.'),
('sports', 'A genre that focuses on sports and athletic competition.'),
('thriller', 'A genre of fiction that is typically characterized by suspense, excitement, and
tension.'),
('action', 'A genre of film in which the protagonist or protagonists are thrust into a
series of challenges that typically include violence, extended fighting, physical feats, and
frantic chases.'),
('romance', 'A genre of fiction that focuses on romantic love and its tribulations.');

-- Ott platform table
Create table ott_platform
(ott varchar(25) primary key,
sub_fee int);
Insert into ott_platform values( 'Netflix' , 8500);
Insert into ott_platform values( 'Amazon prime',1500);
Insert into ott_platform values('Hotstar',1400);
Insert into ott_platform values('sonyliv',1000);
Insert into ott_platform values('zee5',800);

-- Songs table
CREATE TABLE Songs (
song_title VARCHAR(255) NOT NULL,
music_director VARCHAR(100) NOT NULL,
Primary key (song_title, music_director)
Foreign key music_director references musicdirectors(music_director_name)
);
INSERT INTO Songs (song_title, music_director) VALUES
('Malare', 'Gopi Sundar'),
('Theruvilakku', 'Gopi Sundar'),
('Enna Sona', 'A.R Rahman'),
('Pachai Nirame', 'A.R Rahman'),
('Nenjodu Cherthu', 'Rajesh Murugesan'),
('Theruvilakku', 'Rajesh Murugesan'),
('Kadhal Psycho', 'Santhosh Narayanan'),
('Kadalalle', 'Santhosh Narayanan'),
('Varika Varika', 'Sushin Shyam'),
('Cherathukal', 'Sushin Shyam'),
('Ee Kaattu', 'Bijibal'),
('Mizhiyoram', 'Bijibal'),
('Sayaani', 'Jakes Bejoy'),
('Vaanil Irul', 'Jakes Bejoy'),
('Mazha Kondu Mathram', 'Prashant Pillai'),
('Kerala Manninayi', 'Prashant Pillai'),
('Dandalayya', 'M.M Keeravani'),
('Manohari', 'M.M Keeravani'),
('Vellipomaakey', 'Radhan'),
('Nuvvante Na Navvu', 'Radhan'),
('Crazy Feeling', 'Devi Sri Prasad'),
('Ammadu Lets Do Kummudu', 'Devi Sri Prasad'),
('Anaganaganaga', 'S.Thaman'),
('Aa Gattununtaava', 'S.Thaman'),
('Kaththi Theme', 'Anirudh Ravichander'),
('Enakenna Yaarum Illaye', 'Anirudh Ravichander');

-- Languages table
Create table language(
Language_name varchar(25) primary key
);
Insert into languages values(‘Malyalam’);
Inset into languages values(‘Telugu’);
Movie category table
CREATE TABLE MovieGenres (
movie_name VARCHAR(100),
genre VARCHAR(50),
Primary key (movie_name,genre)
);
INSERT INTO MovieGenres (movie_name, genre) VALUES
('Drishyam', 'Thriller'),
('Premam', 'Romance'),
('Premam', 'Drama'),
('Premam', 'Comedy'),
('Bangalore Days', 'Drama'),
('Bangalore Days', 'Romance'),
('Bangalore Days', 'Comedy'),
('Charlie', 'Drama'),
('Charlie', 'Romance'),
('Charlie', 'Comedy'),
('Kumbalangi Nights', 'Drama'),
('Kumbalangi Nights', 'Romance'),
('Kumbalangi Nights', 'Comedy'),
('Ayyappanum Koshiyum', 'Action'),
('Ayyappanum Koshiyum', 'Thriller'),
('Uyare', 'Drama'),
('Uyare', 'Thriller'),
('Maheshinte Prathikaaram', 'Comedy'),
('Maheshinte Prathikaaram', 'Drama'),
('Njan Prakashan', 'Comedy'),
('Njan Prakashan', 'Drama'),
('Mumbai Police', 'Thriller'),
('Baahubali', 'Action'),
('Baahubali', 'Fantasy'),
('Bahubali 2', 'Action'),
('Bahubali 2', 'Fantasy'),
('Arjun Reddy', 'Drama'),
('Arjun Reddy', 'Romance'),
('Rangasthalam', 'Drama'),
('Rangasthalam', 'Action'),
('Ala Vaikunthapurramuloo', 'Drama'),
('Ala Vaikunthapurramuloo', 'Action'),
('Jersey', 'Drama'),
('Jersey', 'Sports'),
('Eega', 'Fantasy'),
('Maharshi', 'Drama'),
('Maharshi', 'Action'),
('Srimanthudu', 'Drama'),
('Srimanthudu', 'Action'),
('Mirchi', 'Action'),
('Mirchi', 'Romance');

-- Music director table
CREATE TABLE MusicDirectors (
music_director_name VARCHAR(100),
date_of_birth DATE,
age INT GENERATED ALWAYS AS (YEAR(CURRENT_DATE) - YEAR(date_of_birth))
STORED,
known_song VARCHAR(100));
INSERT INTO MusicDirectors (music_director_name, date_of_birth, known_song)
VALUES
('Gopi Sundar', '1977-05-30'),
('Rajesh Murugesan', '1984-05-10'),
('Sushin Shyam', '1985-09-15'),
('Jakes Bejoy', '1986-11-15'),
('Bijibal', '1976-11-02'),
('Prashant Pillai', '1975-08-20'),
('M.M Keeravani', '1961-07-04'),
('Radhan', '1983-02-08'),
('Devi Sri Prasad', '1979-08-02'),
('S.Thaman', '1983-11-16'),
('Anirudh Ravichander', '1990-10-16');

-- Cast table
Create table cast(
Movie_name varchar(35),
Actor_name varchar(25),
Primary key(movie_name,actor_name)
Foreign key movie_name references movies(movie_name),
Foreign key actor_name references actorsactresses(name_));
Insert into cast values(‘drishyam’, ’Mohanlal’);
Insert into cast values(‘drishyam’, ’Meena’);
Insert into cast values(‘Premam,’Nivin Pauly’);
Insert into cast values(‘Premam’, ’Sai Pallavi’);
Insert into cast values(‘Bangalore Days’,’Dulquer Salman’);
Insert into cast values(‘Bangalore Days’,’Nazriya Nazim’);
Insert into cast values(‘Charlie’,’Dulquer Salman’);
Insert into cast values(‘Charlie’,’Parvathy Thiruvothu’);
Insert into cast values(‘Kumbalangi Nights’,’Anna Ben’);
Insert into cast values(‘Kumbalangi Nights’,’Fahadh Faasil’);
Insert into cast values(‘Ayyappanum koshiyum’,’Prithviraj Sukumaran’);
Insert into cast values(‘Ayyappanum koshiyum’,’Gowri Nandha’);
Insert into cast values(‘Uyare’,’Tovino Thomas’);
Insert into cast values(‘Uyare’,’Parvathy Thiruvothu’);
Insert into cast values(‘Maheshinte Prathikaaram’,’Fahadh Faasil’);
Insert into cast values(‘Maheshinte Prathikaaram’,’Aparna Balamurali’);
Insert into cast values(‘Njan Prakashan’,’Fahadh Faasil’);
Insert into cast values(‘Njan Prakashan’,’Nikhila Vimal’);
Insert into cast values(‘Mumbai Police’,’Prithviraj Sukumaran’);
Insert into cast values(‘Bahubali:The Beginning’,’Prabhas’);
Insert into cast values(‘Bahubali:The Beginning’,’Anushka Shetty’);
Insert into cast values(‘Bahubali 2:The Conclusion’,’Prabhas’);
Insert into cast values(‘Bahubali 2:The Conclusion’,’Anushka Shetty);
Insert into cast values(‘Arjun Reddy’,’Vijay Devarakonda’);
Insert into cast values(‘Arjun Reddy’,’Shalini Pandey’);
Insert into cast values(‘Rangasthalam’,’Ram Charan’);
Insert into cast values(‘Rangasthalam’,’Samantha Akkineni’);
Insert into cast values(‘Ala Vaikunthapurramuloo’,’Allu Arjun’);
Insert into cast values(‘Ala Vaikunthapurramuloo’,’Pooja Hegde’);
Insert into cast values(‘Jersey’,’Nani’);
Insert into cast values(‘Jersey’,’Shradda Srinath’);
Insert into cast values(‘Eega’,’Nani’);
Insert into cast values(‘Eega’,’Samantha Akkineni’);
Insert into cast values(‘Maharshi’,’Mahesh Babu’);
Insert into cast values(‘Maharshi’,’Pooja Hegde’);
Insert into cast values(‘Srimanthudu’,’Mahesh Babu’);
Insert into cast values(‘Srimanthudu’,’Shruti Haasan’);
Insert into cast values(‘Mirchi’,’Prabhas’);
Insert into cast values(‘Mirchi’,’Anushka Shetty’);
