CREATE TABLE train (
    t_number INT PRIMARY KEY,
    t_name VARCHAR(20) NOT NULL,
    t_premium_fair INT NOT NULL,
    t_general_fair INT NOT NULL,
    t_source_station VARCHAR(20) NOT NULL,
    t_dest_station VARCHAR(20) NOT NULL
);

CREATE TABLE train_availability(
    a_trainnumber INT PRIMARY KEY, 
    a_monday    VARCHAR(10),
    a_tuesday 	VARCHAR(10),
    a_wednseday VARCHAR(10),
    a_thursday	VARCHAR(10),
    a_friday	VARCHAR(10),
    a_saturday	VARCHAR(10),
    a_sunday	VARCHAR(10),
CONSTRAINT fk_a_trainnumber FOREIGN KEY (a_trainnumber) REFERENCES train(t_number)

);

CREATE TABLE train_status (
    ts_day VARCHAR(25) NOT NULL,
    ts_trainname VARCHAR(20) NOT NULL,
    ts_premium_seats_available INT NOT NULL,
    ts_general_seats_available INT NOT NULL,
    ts_premium_seats_occupied INT NOT NULL,
    ts_general_seats_occupied INT NOT NULL,
    ts_t_number INT,
    CONSTRAINT fk_ts_t_number FOREIGN KEY (ts_t_number) REFERENCES train(t_number)
);

CREATE TABLE passenger (
    p_f_name 	VARCHAR(15) NOT NULL,
    p_l_name 	VARCHAR(20) NOT NULL, 
    p_address 	VARCHAR(40),
    p_city 		VARCHAR(15),
    p_county 	VARCHAR(20),
    p_phone_number INT UNIQUE,
    p_ssn 		INT PRIMARY KEY,
    p_birth_date	DATE NOT NULL
);

CREATE TABLE bookings ( 
	b_ssn 			INT PRIMARY KEY, 
	b_train_number 	INT NOT NULL, 
	b_ticket_type   VARCHAR(10) NOT NULL,
	b_status 		VARCHAR (10) NOT NULL,
	CONSTRAINT fk_b_ssn FOREIGN KEY (b_ssn) REFERENCES passenger(p_ssn),
	CONSTRAINT fk_b_train_number FOREIGN KEY (b_train_number) REFERENCES train(t_number)
);
