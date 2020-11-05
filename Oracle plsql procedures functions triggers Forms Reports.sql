Udemy SQL Neri:
show all;
set autocommit on;

create table bairro (
b_codigo integer not null,
b_nome varchar(30),
constraint pk_bairro primary key (b_codigo)
);


insert into bairro values (1, 'Santa Monica');
insert into bairro values (2, 'Martins');
insert into bairro values (3, 'Luizote');

create table cliente (
cl_codigo integer not null,
cl_nome varchar(50),
cl_bairro integer not null,
cl_sexo char (2),
constraint pk_cliente primary key (cl_codigo)
);

insert into cliente values (1, 'Carlos Jr', 1, 'M');
insert into cliente values (2, 'Victor M', 3, 'M');
insert into cliente values (3, 'Lidianne F', 1, 'F');
insert into cliente values (4, 'Ana G', 4, 'F');
insert into cliente values (5, 'Lucas R', 2, 'M');

select * from cliente where cl_nome like ('L%');
select * from cliente where cl_bairro in (2); 
select * from cliente where cl_bairro not in (3,4);
select * from cliente where cl_bairro between 2 and 4;
select * from cliente where cl_bairro not between 2 and 4;

alter table cliente add cl_email varchar(30);
drop cliente;
alter table cliente drop column cl_email;
describe cliente;
alter table cliente add cl_salario numeric (10,2);
alter table cliente rename column cl_salario to cl_renda;
update cliente set cl_renda = 5000 where cl_codigo in (3);

-- # Funções de agregaçao
select avg(cl_renda) as media_salario from cliente;
select sum(cl_renda) as soma_salarios from cliente;
select count(cl_codigo) from cliente;
select count(*) from cliente;
select count(*) from cliente where cl_sexo = 'F';
select min(cl_renda) from cliente;
select max(cl_renda) from cliente;
select upper(cl_nome), c.* from cliente c;
select lower(cl_nome), c.* from cliente c;
select cl_nome ||' '|| cl_renda as Nome_renda from cliente;
create index i_nm_cliente on cliente(cl_nome);


















