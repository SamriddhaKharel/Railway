-- True- refers to available on that day. false - meaning not available on that day
INSERT INTO train_availability(a_trainnumber, a_monday, a_tuesday, a_wednseday, a_thursday, a_friday,a_saturday, a_sunday)
VALUES 
    ('1', 'true', 'true', 'true', 'true', 'true', 'false', 'false'),
    ('2', 'false', 'false', 'false', 'false', 'true', 'true', 'true'),
    ('3', 'true', 'true', 'true', 'false', 'false', 'false', 'false'),
    ('4', 'false', 'false', 'false', 'false', 'false', 'true', 'true'),
    ('5', 'false', 'false', 'true', 'true', 'true', 'false', 'false');