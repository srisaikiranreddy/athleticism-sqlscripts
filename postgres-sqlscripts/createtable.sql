CREATE TABLE food_macros(
   food_macros_id INT GENERATED ALWAYS AS IDENTITY,
   name varchar(20) NOT NULL,
   PRIMARY KEY (food_macros_id)     
);

CREATE TABLE food_micros(
   food_micros_id INT GENERATED ALWAYS AS IDENTITY,
   name varchar(20) NOT NULL,
   PRIMARY KEY (food_micros_id)  
);

CREATE TABLE food_type(
   food_type_id INT GENERATED ALWAYS AS IDENTITY,
   name varchar(20) NOT NULL,
   PRIMARY KEY (food_type_id)
);

CREATE TABLE reviews(
   reviews_id INT GENERATED ALWAYS AS IDENTITY,
   title varchar(20),
   review_comment varchar(100),
   PRIMARY KEY (reviews_id)
);

CREATE TABLE food(
   food_id INT GENERATED ALWAYS AS IDENTITY,
   name varchar(20) NOT NULL,
   food_macros_id INT,
   food_type_id INT,
   food_micros_id INT,
   PRIMARY KEY (food_id),
   FOREIGN KEY (food_macros_id)
      REFERENCES food_macros (food_macros_id), 
	FOREIGN KEY (food_micros_id)
      REFERENCES food_micros (food_micros_id), 
	FOREIGN KEY (food_type_id)
      REFERENCES food_type (food_type_id) 
);



