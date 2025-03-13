-- criação do banco de dados para o cenário anterior de Oficina
-- drop  database oficina;
create database oficina;
use oficina;

-- criar tabela Cliente
create table Cliente(
    idCliente int auto_increment primary key,
    Nome varchar(100),
    Telefone char(11),
    Veiculo varchar(15)
);

alter table Cliente auto_increment=1;

-- criar tabela Equipe
create table Equipe(
    idEquipe int auto_increment primary key,
    Nome varchar(100)
);

alter table Equipe auto_increment=1;

-- criar tabela Ordem de Serviço
create table Ordem_de_Servico(
    idOrdem_de_Servico int auto_increment primary key,
    idODSEquipe int,
    idODSCliente int,
    Categoria enum('Conserto','Revisão'),
    Valor_Total float,
    Data_de_Emissao date,
    Data_de_Entrega date,
    Data_de_Conclusao date,
    Autorizacao bool,
    status enum('Aberta','Em análise','Aguardando Aprovação','Em Execução','Finalizada','Entregue','Cancelada'),
    constraint fk_ods_equipe foreign key (idODSEquipe) references Equipe(idEquipe),
    constraint fk_ods_cliente foreign key (idODSCliente) references Cliente(idCliente)
);

alter table Ordem_de_Servico auto_increment=1;

-- criar tabela Mão de Obra
create table Mao_de_Obra (
    idMao_de_Obra int auto_increment primary key,
    idMDOOrdem_de_servico int,
    Servico varchar(30),
    Valor float,
    constraint fk_mdo_ordem_de_servico foreign key (idMDOOrdem_de_servico) references Ordem_de_Servico(idOrdem_de_Servico)
);

alter table Mao_de_Obra auto_increment=1;

-- criar tabela Peça
create table Peca(
    idPeca int auto_increment primary key,
    idPOrdem_de_servico int,
    Peca varchar(50),
    Valor float,
    constraint fk_p_ordem_de_servico foreign key (idPOrdem_de_servico) references Ordem_de_Servico(idOrdem_de_Servico)
);

alter table Peca auto_increment=1;

-- criar tabela Mecânico
create table Mecanico(
    idMecanico int auto_increment primary key,
    idMEquipe int,
    Nome varchar(100),
    Endereco varchar(45),
    Especialidade varchar(50),
    constraint fk_m_equipe foreign key (idMEquipe) references Equipe(idEquipe)
);

alter table Mecanico auto_increment=1;