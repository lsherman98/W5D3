PRAGMA foreign_keys = ON;


CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT,
    lname TEXT
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT, 
    body TEXT,
    author INTEGER 
);

CREATE TABLE question_follows (
    user_id INTEGER,
    question_id INTEGER
);

CREATE TABLE replies (
    id INTEGER PRIMARY KEY,
    question_id INTEGER,
    parent_reply INTEGER,
    author_id INTEGER,
    body TEXT
);

CREATE TABLE question_likes (
    question_id INTEGER,
    user_id INTEGER
);

insert into users (fname, lname)
values ('Levi', 'Sherman');

insert into questions (title, body, author)
values ('Name', 'What is your name?', 1);

insert into question_follows (user_id, question_id)
values (1, 1);

insert into replies (question_id, author_id, body)
values (1, 1, 'Its true');

insert into question_likes (question_id, user_id)
values (1, 1);