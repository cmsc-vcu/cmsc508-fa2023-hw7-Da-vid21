# hw7-ddl.sql

# Section 1
# Drops all tables.  This section should be amended as new tables are added.
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS peopleroles;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS skills;
SET FOREIGN_KEY_CHECKS = 1;

# Section 2
CREATE TABLE skills (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(4096) NOT NULL,
    tag VARCHAR(255) NOT NULL,
    url VARCHAR(255) DEFAULT NULL,
    time_commitment VARCHAR(255) DEFAULT NULL
);

# Section 3
INSERT INTO skills (id, name, description, tag) VALUES
(1, 'Programming', 'Understanding and writing computer programs', 'Skill 1'),
(2, 'Data Analysis', 'Analyzing and interpreting complex datasets', 'Skill 2'),
(3, 'Project Management', 'Managing and leading projects to success', 'Skill 3'),
(4, 'Graphic Design', 'Creating visual content to communicate messages', 'Skill 4'),
(5, 'Digital Marketing', 'Marketing products or services using digital technologies', 'Skill 5'),
(6, 'Photography', 'Capturing images to tell stories or record events', 'Skill 6'),
(7, 'Public Speaking', 'Effectively delivering speeches to audiences', 'Skill 7'),
(8, 'Writing', 'Composing text for various purposes', 'Skill 8');

# Section 4
CREATE TABLE people (
    id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    linkedin_url VARCHAR(255),
    headshot_url VARCHAR(255),
    discord_handle VARCHAR(255),
    brief_bio VARCHAR(4096),
    date_joined DATE NOT NULL
);

# Section 5
INSERT INTO people (id, first_name, last_name, date_joined) VALUES
(1, 'John', 'Person 1', '2023-01-01'),
(2, 'Jane', 'Person 2', '2023-01-02'),
(3, 'Mike', 'Person 3', '2023-01-03'),
(4, 'Sara', 'Person 4', '2023-01-04'),
(5, 'Leo', 'Person 5', '2023-01-05'),
(6, 'Emily', 'Person 6', '2023-01-06');

# Section 6
CREATE TABLE peopleskills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    skills_id INT,
    people_id INT,
    date_acquired DATE,
    FOREIGN KEY (skills_id) REFERENCES skills(id),
    FOREIGN KEY (people_id) REFERENCES people(id)
);

# Section 7
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES
(1, 1, '2023-01-01'),
(3, 1, '2023-01-01'),
(6, 1, '2023-01-01'),
(3, 2, '2023-01-02'),
(4, 2, '2023-01-02'),
(5, 2, '2023-01-02'),
(1, 3, '2023-01-03'),
(5, 3, '2023-01-03'),
(3, 5, '2023-01-05'),
(6, 5, '2023-01-05'),
(2, 6, '2023-01-06'),
(3, 6, '2023-01-06'),
(4, 6, '2023-01-06');

# Section 8
CREATE TABLE roles (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    sort_priority INT
);

# Section 9
INSERT INTO roles (id, name, sort_priority) VALUES
(1, 'Designer', 10),
(2, 'Developer', 20),
(3, 'Recruit', 30),
(4, 'Team Lead', 40),
(5, 'Boss', 50),
(6, 'Mentor', 60);

# Section 10
CREATE TABLE peopleroles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    people_id INT,
    role_id INT,
    date_assigned DATE,
    FOREIGN KEY (people_id) REFERENCES people(id),
    FOREIGN KEY (role_id) REFERENCES roles(id)
);

# Section 11
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES
(1, 2, '2023-01-01'), -- Person 1 is Developer
(2, 5, '2023-01-02'), -- Person 2 is Boss
(2, 6, '2023-01-02'), -- Person 2 is Mentor
(3, 2, '2023-01-03'), -- Person 3 is Developer
(3, 4, '2023-01-03'), -- Person 3 is Team Lead
(4, 3, '2023-01-04'), -- Person 4 is Recruit
(5, 3, '2023-01-05'), -- Person 5 is Recruit
(6, 2, '2023-01-06'), -- Person 6 is Developer
(6, 1, '2023-01-06'), -- Person 6 is Designer
(7, 1, '2023-01-07'), -- Person 7 is Designer
(8, 1, '2023-01-08'), -- Person 8 is Designer
(8, 4, '2023-01-08'), -- Person 8 is Team Lead
(9, 2, '2023-01-09'), -- Person 9 is Developer
(10, 2, '2023-01-10'), -- Person 10 is Developer
(10, 1, '2023-01-10'); -- Person 10 is Designer