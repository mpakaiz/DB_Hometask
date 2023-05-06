CREATE TABLE IF NOT EXISTS Department (
	department_id SERIAL PRIMARY KEY,
	name VARCHAR(128) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Employee (
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	department_id INTEGER NOT NULL REFERENCES Department(department_id),
	head name
);


