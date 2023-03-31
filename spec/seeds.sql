TRUNCATE TABLE cohorts, students RESTART IDENTITY;


INSERT INTO cohorts (name, starting_date) VALUES 
('Magenta', 'Aug-08-2021'),
('Teal', 'Nov-22-2021'),
('Crimson', 'Mar-15-2022'),
('Indigo', 'Jun-07-2022'),
('Amber', 'Oct-17-2022');

INSERT INTO students (name, cohort_id) VALUES
('Eva Green', '1'),
('Lucas Thompson', '2'),
('Emily Rodriguez', '3'),
('Isaac Patel', '4'),
('Sophia Johnson', '5'),
('Aiden Wright', '1'),
('Nora Davis', '2'),
('Ethan Martin', '3'),
('Avery Brown', '4'),
('Oliver Wilson', '5'),
('Mia Garcia', '1'),
('Benjamin Lee', '2'),
('Charlotte Clark', '4'),
('Liam Hall', '4'),
('Aria Baker', '5');