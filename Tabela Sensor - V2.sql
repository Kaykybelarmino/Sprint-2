create database lettuce;
use lettuce;

create table Sensor(
idSensor int primary key not null,
tipoSensor varchar(40) not null, 
Setor varchar(1) not null,
Produto varchar(40) not null constraint chkProduto check(Produto IN("Alface", "Rúcula")),
Divisao char(1) not null,
idCadastro INT      
);

insert into Sensor values
(1, "LM35",3, "Alface", "A",1),
(2, "DHT11",3, "Alface", "A",1),
(3, "LM35",3, "Rúcula", "A",1),
(4, "DHT11",3, "Rúcula", "A",1),
(5, "LM35",3, "Alface", "B",2),
(6, "DHT11",3, "Alface", "B",2);

-- Divisão B do Sensor 5 parou de funcionar, enquanto não for consertado, ele ficará inativo
delete from Sensor
	where idSensor = 5;

-- O sensor 6 teve que ser mudado para Divisão C do Mercado
update Sensor set Divisão = "C"
	where idSensor = 6;
    drop table sensor;
select*from Sensor;

drop table Sensor;
