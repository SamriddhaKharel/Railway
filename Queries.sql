.mode table
.header on

--Given a passenger’s last name and first name and retrieve all trains they are booked on.
SELECT  T_NUMBER, T_NAME
FROM passenger, bookings, train
WHERE P_SSN = B_SSN AND B_TRAIN_NUMBER = T_NUMBER AND 
    p_f_name = 'James' AND p_l_name = 'Butt';   

--Given a day list the passengers traveling on that day with confirmed tickets. 
SELECT p_f_name, p_l_name, b_status
FROM passenger, bookings, train_status, train_availability, train
WHERE p_ssn = b_ssn AND b_train_number = t_number AND a_trainnumber = t_number AND a_sunday = 'true'
 AND b_status = 'Booked' AND a_trainnumber = b_train_number;

--Display the train information (Train Number, Train Name, Source and Destination) and 
--passenger information (Name, Address, Category, ticket status) of passengers who are 
--between the ages of 50 to 60. 
SELECT t_number AS Train_Number, t_name AS Train_Name, t_source_station AS Source_Station, t_dest_station AS Destination_Station,
     p_f_name AS Passenger_First_Name, p_l_name AS Passenger_Last_Name, p_address AS _ADDRESS ,b_ticket_type AS TICKET_TYPE, b_status AS _STATUS
FROM train, passenger, bookings
WHERE p_ssn = b_ssn AND t_number = b_train_number AND (2024 - CAST(SUBSTR(p_birth_date, -4) AS INTEGER) BETWEEN 50 AND 60);

--List train name, day and number of passenger on that train.
SELECT  DISTINCT t_name AS TRAIN_NAME, ts_day AS TRAIN_DAY, ts_general_seats_occupied + ts_premium_seats_occupied AS NUMBER_OF_PASSENGERS
FROM train, train_status, passenger, bookings
WHERE p_ssn = b_ssn AND t_name = ts_trainname AND b_status = 'Booked';

--NOTE: THE TRAIN NAME HAS TO BE THE EXACT SAME WAY IT WAS ENTERED. SINCE THE DATA WAS IMPORTED. REFER TO Train.CSV
--Enter a train name and retrieve all the passengers with confirmed status traveling on that train.
SELECT p_f_name, p_l_name, b_status, t_name
FROM passenger, train, bookings
WHERE p_ssn = b_ssn  AND b_status = 'Booked' AND t_name = " Flying Scottsman"; --inlcude a space before the name or else the query dosen't work

--List passengers that are waitlisted including the name of the train.
SELECT DISTINCT p_f_name AS FIRST_NAME, p_l_name AS LAST_NAME, b_status AS _STATUS, t_name AS TRAIN_NUMBER
FROM passenger, train, bookings
WHERE p_ssn = b_ssn  AND b_status = 'WaitL' AND b_train_number = t_number;

--List passenger names in descending order that have '605' phone area code.
SELECT p_f_name, p_l_name, p_phone_number
FROM passenger
WHERE p_phone_number LIKE '605%'
ORDER BY p_f_name DESC, p_l_name DESC;

--List name of passengers that are traveling on Thursdays in ascending order.  --This has no output since booked trains don't run on thursday
SELECT DISTINCT p_f_name, p_l_name
FROM passenger, bookings, train , train_status, train_availability
WHERE p_ssn = b_ssn AND b_train_number = t_number AND a_trainnumber = b_train_number AND a_thursday = 'true' AND b_status = 'Booked'
ORDER BY p_f_name ASC ,p_l_name ASC;