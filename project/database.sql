create database MEDSITE_db;

CREATE TABLE IF NOT EXISTS Doctors (
  Docter_id INTEGER,
  name VARCHAR(50) NOT NULL,               /* The Doctore's first & last name */
  password_dr VARCHAR(50),   							         /* the doctores password */
  username_dr VARCHAR(50) NOT NULL UNIQUE,      /* there user name for prefoming there own searches*/  
  phone_number INTEGER,       								 /* there faciliry phone number */
  email_name VARCHAR(50) NOT NULL UNIQUE,         /* there primary for of contact email */
  picture not NUll,												 /* there photograph */
  location VARCHAR(60),												 /* there facility location */
  gender VARCHAR(5) not null, 												 /* there sex */
  spacalty  VARCHAR(50) NOT NULL           /* there given spcalty only one for now */
);

CREATE TABLE IF NOT EXISTS Ratings (
  Visitor_id INTEGER,
  Actual_Rating DECIMAL,   					/* there rating that is dislplaed */
  total_rating INTEGER,             /* total rating inorder to calc actual ratings */
  total_num_rating INTEGER,         /* number of rating submitions to be used to calculation */
  Docter_id INTEGER,      					/* the id to assine the rating too */
);

CREATE TABLE IF NOT EXISTS Visitor (
  Visitor_id INTEGER,
  name VARCHAR(50) NOT NULL,               /* The visitor's first & last name */
  username VARCHAR(50) NOT NULL UNIQUE,           /* there user name for prefoming there own searches*/
  password_visitor VARCHAR(50),              /* the doctores password */
  phone_number INTEGER,       								 /* there primary phone number */
  email name VARCHAR(50) NOT NULL UNIQUE,         /* there primary for of contact email */
  picture VARCHAR(120),												 /* there photograph */
  location VARCHAR(60),												 /* a location to base the search around */
  gender VARCHAR(5) not null, 												 /* there sex */
  Rating_id INTEGER,       					       /* unique rating for each doctor */
);


CREATE TABLE IF NOT EXISTS Search_History (
  Visitor_id INTEGER,       		           /* unique id for each visitor */
  Docter_id INTEGER,      					/* the id to assine the rating too */
  spachalty VARCHAR(50) NOT NULL, 
);

/*
TABLE: Doctors, TAKES IN: Docter_id, name, password_dr, username_dr, phone_number, email_name, picture, location, gender, spacalty
*/
INSERT INTO Doctors()
VALUES();


/*
TABLE: Ratings, TAKES IN: Visitor_id, Actual_Rating, total_rating, total_num_rating, Docter_id
*/
INSERT INTO Ratings()
VALUES();


/*
TABLE: Visitor, TAKES IN: Visitor_id,name, username, password_visitor, phone_number, email name, picture, location, gender, Rating_id
*/
INSERT INTO Visitor()
VALUES();


/*
TABLE: Serach, TAKES IN:  Visitor_id, Docter_id, spachalty
*/
INSERT INTO Serach()
VALUES();











/* ___________________Other tables not in use___________________*/

# create table if not exists Search (
#   spachalty VARCHAR(50) NOT NULL, 
#   Doctor_id integer,       					       /* unique id for each doctor */
#   location address,	
#   ailment  VARCHAR(50) NOT NULL,
#   cost integer,
#   age integer,
#   years_of_experiranice integer,
#   /*procimity,*/
#   /*avalibility*/
# );

# CREATE TABLE IF NOT EXISTS Registration (
# 	Visitor_id integer,       		           /* unique id for each visitor */
#   Docter_id integer,      					/* the id to assine the rating too */
#   password_visitor integer,                /* the doctores password */
#   password_Dr int,   							         /* the doctores password */
#   usernameDr VARCHAR(50) NOT NULL,      /* there user name for prefoming there own searches*/  
#   usernameV VARCHAR(50) NOT NULL           /* there user name for prefoming there own searches*/
# );