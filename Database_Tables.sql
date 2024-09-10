use zen_class;

CREATE TABLE users (
    user_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50),
    user_email VARCHAR(50),
    batch_id INTEGER
);

INSERT INTO users(user_name, user_email, batch_id) VALUES
    ("Kumar", "kumar@abc.com", 40),
    ("Vicky", "vicky@abc.com", 08),
    ("Ajith", "ajith@abc.com", 50),
    ("Ashok", "ashok@abc.com", 41);

select * from users;


CREATE TABLE codekata (
    user_id INTEGER,
    number_of_problems_solved INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO codekata(user_id, number_of_problems_solved) VALUES
    (1, 150),
    (2, 160),
    (3, 100),
    (4, 200);
    
    select * from codekata;
    
    
    CREATE TABLE company_drives (
    drive_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id INTEGER,
    drive_date DATE,
    company VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO company_drives(user_id, drive_date, company) VALUES
    (2, "2024-07-12", "CompanyD"),
    (3, "2024-06-15", "CompanyC"),
    (4, "2024-07-30", "CompanyB"),
    (1, "2024-08-25", "CompanyA");
    
    select * from company_drives;
    
    CREATE TABLE mentors (
    mentor_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    mentor_name VARCHAR(50),
    mentor_email VARCHAR(50)
);

INSERT INTO mentors(mentor_name, mentor_email) VALUES
    ("Damu", "Damu@abc.com"),
    ("Deepak", "Deepak@abc.com"),
    ("Jerome", "Jerome@abc.com"),
    ("Vinod", "Vinod@abc.com");
    
    select * from mentors;
    
    
    CREATE TABLE topics (
    topic_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    topic VARCHAR(100),
    topic_date DATE,
    mentor_id INTEGER,
    batch_id INTEGER,
    FOREIGN KEY (mentor_id) REFERENCES mentors(mentor_id)
);

INSERT INTO topics(topic, topic_date, mentor_id, batch_id) VALUES
    ("HTML - Basics", "2024-08-03", 1, 44),
    ("ExpressJS - Basics", "2024-06-05", 2, 23),
    ("MongoDB - Basics", "2024-07-25", 3, 30),
    ("CSS - Basics", "2024-05-18", 4, 40);
    
    select * from topics;
    
    
CREATE TABLE tasks (
    task_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    topic_id INTEGER,
    task VARCHAR(1000),
    batch_id INTEGER,
    FOREIGN KEY (topic_id) REFERENCES topics(topic_id)
);

INSERT INTO tasks(topic_id, task, batch_id) VALUES
    (1, "HTML Task", 20),
    (2, "Express Task", 29),
    (3, "MongoDb Task", 34),
    (4, "Css Task", 31);
    
    select * from tasks;


CREATE TABLE attendance (
    attendance_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id INTEGER,
    topics_id INTEGER,
    attended BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (topics_id) REFERENCES topics(topic_id)
);

INSERT INTO attendance(user_id, topics_id, attended) VALUES
    (2, 3, true),
    (4, 1, true),
    (1, 2, false),
    (3, 4, true);
    
    select * from attendance;
    
    
    CREATE TABLE queries (
    query_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id INTEGER,
    query_body VARCHAR(500),
    mentor_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (mentor_id) REFERENCES mentors(mentor_id)
);

INSERT INTO queries(user_id, query_body, mentor_id) VALUES
    (1, "query about CSS", 1),
    (3, "query about Mongodb",3),
    (2, "query about Express", 4),
    (4, "query about Node", 2);
    
    select * from queries;






