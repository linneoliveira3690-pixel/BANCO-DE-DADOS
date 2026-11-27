Create Database Gravadora;
 
USE Gravadora;
 
Create table Autor(
Cod_Autor INT PRIMARY KEY NOT NULL,
Nome_Autor VARCHAR(60)
);
 
Create table Musica(
Cod_Musica INT PRIMARY KEY NOT NULL,
Nome_Musica VARCHAR(60),
Duracao Numeric(6.2)
);
 
Create table Gravadora(
Cod_Gravadora INT PRIMARY KEY NOT NULL,
Nome_Gravadora VARCHAR(60),
End_Gravadora VARCHAR(60),
Tel_Gravadora VARCHAR(20),
Contato VARCHAR(20),
URL VARCHAR(80)
);
 
Create table CD (
Cod_CD INT PRIMARY KEY NOT NULL,
Cod_Gravadora INT PRIMARY KEY NOT NULL,
FOREIGN KEY (Cod_Gravadora) References Gravadora,
Nome_CD VARCHAR(60),
Preco_Venda NUMERIC(14.2),
Data_Lancamento DATETIME,
CD_Indicado INT
);
 
Create table Musica_Autor(
Cod_Musica INT PRIMARY KEY NOT NULL,
FOREIGN KEY (Cod_Musica) References Musica,
Cod_Autor INT PRIMARY KEY NOT NULL,
FOREIGN KEY (Cod_Autor) References Autor
);
 
Create table Faixa(
Cod_Musica INT PRIMARY KEY NOT NULL,
FOREIGN KEY (Cod_Musica) References Musica,
Cod_CD INT PRIMARY KEY NOT NULL,
FOREIGN KEY (Cod_CD) References CD,
NUM_Faixa INT
);
-- DML
 
INSERT INTO Nome_Autor VALUES
(1, 'Vinicius De Moraes'),
(2,'Cazuza'),
(3,'Rita Lee'),
(4, 'DJAVAN'),
(5, 'Vanessa da Mata');
 
INSERT INTO Nome_Musica VALUES 
(1,'Casa 0'),
(2, 'Beija-flor'),
(3, 'Mania De Você'),
(4, 'Amor Puro'),
(5, 'Se'),
(6,'Amado');



