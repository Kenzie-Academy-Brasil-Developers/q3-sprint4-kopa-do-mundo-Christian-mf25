-- Cria tabela kopa
create table if not exists kopas(
	id 			BIGSERIAL		primary key,
	selecao		VARCHAR(128)	not null unique,
	qnt_copas	INTEGER		 	not null
);


-- Populando tabela com snippet
insert into
	kopas(selecao, qnt_copas)
values
	('Brasil', 5),
	('Alemanha', 5),
	('Itália', 4),
	('Argentina', 2),
	('França', 2),
	('Uruguai', 2),
	('Inglaterra', 1),
	('Espanha', 1),
	('Japão', 1);


-- Selecionando copas e qnt_copas
select 
	(selecao, qnt_copas)
from
	kopas; 


-- Atualizando Alemanha
update
	kopas
set
	qnt_copas = 4
where selecao = 'Alemanha';


-- Apagando Japão
delete from 
	kopas
where selecao = 'Japão';


	