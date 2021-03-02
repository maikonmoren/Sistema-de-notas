
-- Execute em partes para ficar mais facil visualizar os erros 
-- 1
ALTER TABLE grades 
CHANGE COLUMN maneuver_1 maneuver_1 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN maneuver_2 maneuver_2 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN maneuver_3 maneuver_3 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN maneuver_4 maneuver_4 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN maneuver_5 maneuver_5 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN maneuver_6 maneuver_6 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN maneuver_7 maneuver_7 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN maneuver_8 maneuver_8 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN penalty_1 penalty_1 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN penalty_2 penalty_2 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN penalty_3 penalty_3 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN penalty_4 penalty_4 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN penalty_5 penalty_5 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN penalty_6 penalty_6 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN penalty_7 penalty_7 VARCHAR(255) NOT NULL DEFAULT '-' ,
CHANGE COLUMN penalty_8 penalty_8 VARCHAR(255) NOT NULL DEFAULT '-' ;
-- Adicionando FKs ligando as tabelas Users e Events
ALTER TABLE grades
ADD COLUMN user_id CHAR(36) NULL AFTER judge_id,
ADD COLUMN event_id CHAR(36) NULL AFTER user_id,
ADD INDEX grades_ibfk_1_idx (user_id ASC),
ADD INDEX grades_ibfk_3_idx (event_id ASC);
;
ALTER TABLE grades 
ADD CONSTRAINT grades_ibfk_2
  FOREIGN KEY (user_id)
  REFERENCES nccr2.users (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT grades_ibfk_3
  FOREIGN KEY (event_id)
  REFERENCES events (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
-- Criando a tabela que controla qual competidor mostrar no telão
create table runner_turn(
	runner_id int primary key,
    grade_id char(36),
    category varchar(100)
);

-- 2
insert into runner_turn values (1,null,null);

--3 

DELIMITER $$ 
CREATE  TRIGGER grades_AFTER_INSERT AFTER INSERT ON grades FOR EACH ROW
BEGIN
       update runner_turn set grade_id = new.id where runner_id = 1; 
END;
$

-- 4
CREATE 
VIEW vw_juiz_login AS
    SELECT 
        j.id AS jid,
        u.id AS uid,
        u.email AS email,
        u.password_hash AS psw,
        u.name AS name
    FROM
        (users u
        JOIN judges j)
    WHERE
        (j.user_id = u.id);

--5

CREATE 
VIEW vw_competitors AS
SELECT u.id AS id, u.name AS name,
	  a.name AS animal,
	 s.oe AS oe,
	 s.category AS category,
	  e.id AS event
    FROM
        (((subscriptions s
        JOIN users u)
        JOIN events e)
        JOIN animals a)
    WHERE
        ((u.id = s.user_id)
            AND (a.id = s.animal_id)
            AND (s.event_id = e.id));

-- 6
CREATE 
VIEW vw_competitors AS
SELECT u.id AS id, u.name AS name,
	  a.name AS animal,
	 s.oe AS oe,
	 s.category AS category,
	  e.id AS event
    FROM
        (((subscriptions s
        JOIN users u)
        JOIN events e)
        JOIN animals a)
    WHERE
        ((u.id = s.user_id)
            AND (a.id = s.animal_id)
            AND (s.event_id = e.id));
-- 7 
CREATE 
VIEW vw_painel AS
    SELECT 
        g.maneuver_1 AS m1,
        g.maneuver_2 AS m2,
        g.maneuver_3 AS m3,
        g.maneuver_4 AS m4,
        g.maneuver_5 AS m5,
        g.maneuver_6 AS m6,
        g.maneuver_7 AS m7,
        g.maneuver_8 AS m8,
        g.penalty_1 AS p1,
        g.penalty_2 AS p2,
        g.penalty_3 AS p3,
        g.penalty_4 AS p4,
        g.penalty_5 AS p5,
        g.penalty_6 AS p6,
        g.penalty_7 AS p7,
        g.penalty_8 AS p8,
        vw.id AS id,
        vw.name AS runner,
        vw.animal AS animal,
        vw.category AS category,
        j.name AS judge
    FROM
        (((vw_competitors vw
        JOIN grades g)
        JOIN runner_turn r)
        JOIN vw_juiz_login j)
    WHERE
        ((g.user_id = vw.id)
            AND (g.id = r.grade_id)
            AND (vw.category = r.category)
            AND (j.jid = g.judge_id));

-- 8

DELIMITER $
 CREATE FUNCTION NovaNota(uso char(36), judge_id char(36), even char(36)) 
 RETURNS CHAR(36)
 BEGIN
 insert into grades(id,user_id,judge_id,event_id,created_at,updated_at) values 
 (uuid(),uso,judge_id,even,current_timestamp(),current_timestamp());
 return (select id from grades where user_id=uso and event_id = even and created_at = (select max(created_at) from grades));
 END;
 $

