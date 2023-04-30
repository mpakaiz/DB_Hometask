CREATE TABLE IF NOT EXISTS Employee (
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	department_id INTEGER NOT NULL REFERENCES Department(department_id)
);


CREATE TABLE IF NOT EXISTS Department (
	department_id SERIAL PRIMARY KEY,
	name VARCHAR(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS Heads (
	heads_id SERIAL PRIMARY KEY,
	employee_id INTEGER NOT NULL REFERENCES Employee(employee_id),
	name VARCHAR(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS employee_heads (
	id SERIAL PRIMARY KEY,
	employee_id INTEGER NOT NULL REFERENCES Employee(employee_id),
	heads_id INTEGER NOT NULL REFERENCES Heads(heads_id)
);
