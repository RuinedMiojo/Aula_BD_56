#Selecionar a contagem de funcionarios de cada departamento baseado no "id"
select id_departamento, count(*) as total_funcionarios
from funcionarios
group by id_departamento;

select id_departamento, count(*) as total_funcionarios
from funcionarios
where salario >10000 group by id_departamento;

select id_departamento, count(*) as total_funcionarios
from funcionarios
where salario between 5000 and 10000 group by id_departamento;

#teste
select id, count(*) as total_departamento
from departamentos
group by nome;

#Mostrar a soma dos salários de cada departamento
select id_departamento, sum(salario) as soma_salarial
from funcionarios
group by id_departamento order by id_departamento;

#Mostrar a média salarial de cada departamento
select id_departamento, avg(salario) as soma_salarial
from funcionarios
group by id_departamento order by id_departamento;

select * from funcionarios;

#Atualizar o salário com 10% de aumento
update funcionarios
set salario = salario * 1.1
where id_departamento= 4 or 5 or 1;

#Atualizar o salário com 5% de aumento
update funcionarios
set salario = salario * 1.05
where id_departamento= 7 or 2 or 11;

#Atualizar o salário com 2% de aumento
update funcionarios
set salario = salario * 1.02
where id_departamento= 6 or 8 or 9 or 13 or 14 or 15;


#DESAFIO - Arredondar para duas casas decimais
select cast(round(avg(salario),2) as decimal (10,2)) as media_arredondada
from funcionarios
group by id_departamento order by id_departamento;