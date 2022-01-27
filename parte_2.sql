-- Adicionando coluna pts na tabela kopa
alter table
	kopas 
add column 
	pts integer;


--  Atualizando pontos das seleções na tabela kopas
update kopas set pts = 237 where selecao like 'Brasil';
update kopas set pts = 221 where selecao like 'Alemanha';
update kopas set pts = 156 where selecao like 'Itália';
update kopas set pts = 144 where selecao like 'Argentina';
update kopas set pts = 115 where selecao like 'França';
update kopas set pts = 84 where selecao like 'Uruguai';
update kopas set pts = 108 where selecao like 'Inglaterra';
update kopas set pts = 105 where selecao like 'Espanha';


-- Capturando todos os dados da tabela kopas 
select * from kopas;


-- Criando tabela estadios
create table if not exists estadios(
	id 				BIGSERIAL primary key,
	edicao			VARCHAR,
	ano				VARCHAR(4),
	estadio			VARCHAR,
	"local"			VARCHAR(128),
	publico_pagante	INTEGER
);


-- Populando tabela estadios com snippet
insert into 
	estadios(edicao, ano, estadio, "local", publico_pagante)
values
	('I', '1930', 'Estádio Centenário', 'Montevidéu', 68346),
	('II', '1934', 'Estádio do Partido Nacional Fascista', 'Roma', 55000),
	('III', '1938', 'Estádio Olímpico Yves-du-Manoir', 'Colombes', 45000),
	('IV', '1950', 'Estádio do Maracanã', 'Rio de Janeiro', 173850),
	('V', '1954', 'Estádio Wankdorf', 'Berna', 62500),
	('VI', '1958', 'Estádio Råsunda', 'Solna', 49737),
	('VII', '1962', 'Estádio Nacional do Chile', 'Santiago', 68679),
	('VIII', '1966', 'Estádio de Wembley', 'Londres', 96924),
	('IX', '1970', 'Estádio Azteca', 'Cidade do México', 107412),
	('X', '1974', 'Estádio Olímpico de Munique', 'Munique', 78200),
	('XI', '1978', 'Estádio Monumental de Núñez', 'Buenos Aires', 71483),
	('XII', '1982', 'Estádio Santiago Bernabéu', 'Madrid', 90000),
	('XIII', '1986', 'Estádio Azteca', 'Cidade do México', 114600),
	('XIV', '1990', 'Estádio Olímpico de Roma', 'Roma', 73603),
	('XV', '1994', 'Rose Bowl', 'Pasadena', 94194),
	('XVI', '1998', 'Stade de France', 'Saint-Denis', 80000),
	('XVII', '2002', 'Estádio Internacional de Yokohama', 'Yokohama', 69029),
	('XVIII', '2006', 'Estádio Olímpico de Berlim', 'Berlim', 69000),
	('XIX', '2010', 'Soccer City', 'Joanesburgo', 84490),
	('XX', '2014', 'Estádio do Maracanã', 'Rio de Janeiro', 74738),
	('XXI', '2018', 'Estádio Lujniki', 'Moscou', 78011);


-- Selecionando tudo da tabela estadios
select * from estadios;


-- Selecionando publico_pagante maior que 100.000
select * from 
	estadios
where publico_pagante > 100000;


--  Selecionando publico_pagante maior que 50.000 e menor que 100.000
select * from 
	estadios
where
	publico_pagante > 50000 
and 
	publico_pagante < 100000;


-- Selecionando estadios com "y" na última letra
select * from 
	estadios 
where estadio like '%y';


-- Alterando tipo de dado do ano de VARCHAR para INTEGER
alter table
	estadios 
alter column
	ano type INTEGER
using ano::INTEGER;
	
	
	
-- Selecionando tudo da tabela estádios 
select * from estadios;	