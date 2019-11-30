CREATE SCHEMA math AUTHORIZATION postgres;

CREATE TABLE math.operators (
	id serial NOT NULL
	operators varchar NOT NULL,
	precedence integer NOT NULL,
	associativity varchar NOT NULL,
	apply varchar(1) NOT NULL DEFAULT 'Y'
);

INSERT INTO math.operators (operators, precedence, associativity, apply) VALUES('+', 1, 'LEFT', 'Y');
INSERT INTO math.operators (operators, precedence, associativity, apply) VALUES('-', 1, 'LEFT', 'Y');
INSERT INTO math.operators (operators, precedence, associativity, apply) VALUES('*', 2, 'LEFT', 'Y');
INSERT INTO math.operators (operators, precedence, associativity, apply) VALUES('/', 2, 'LEFT', 'Y');
COMMIT;
