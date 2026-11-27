Create Database Biblioteca;

USE Biblioteca;
Create Table Autor(
cod_autor int not null AUTO_INCREMENT,
nacionalidade varchar(30),
nome_autor varchar(60),
PRIMARY KEY(COD_AUTOR)
);

Create Table Categoria(
cod_cat int not null Auto_increment,
desc_cat varchar(40),
PRIMARY KEY (cod_cat)
);

Create Table Livro(
ISBN int not null Auto_increment,
titulo_livro varchar(100),
editora varchar(50),
ano int not null Auto_increment,

PRIMARY KEY (ISBN),

Foreign Key (cod_cat) References Categoria (cod_cat)
);

Create Table Autor_Livro(
cod_autor int not null Auto_increment,
ISBN int not null Auto_increment,

PRIMARY KEY(cod_autor, ISBN),

Foreign Key (cod_autor)
	References Autor(cod_autor),
    
Foreign Key (ISBN)
	References Livro(ISBN)
);
show tables;