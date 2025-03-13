use Oficina;

-- Inserindo dados na tabela Cliente
insert into Cliente (Nome, Telefone, Veiculo) values
('Carlos Silva', '11987654321', 'Honda Civic'),
('Mariana Souza', '11998765432', 'Toyota Corolla'),
('Roberto Lima', '11976543210', 'Ford Focus'),
('Fernanda Alves', '11965432109', 'Chevrolet Onix');

-- Inserindo dados na tabela Equipe
insert into Equipe (Nome) values
('Equipe Alfa'),
('Equipe Beta');

-- Inserindo dados na tabela Ordem de Serviço
insert into Ordem_de_Servico (idODSEquipe, idODSCliente, Categoria, Valor_Total, Data_de_Emissao, Data_de_Entrega, Data_de_Conclusao, Autorizacao, status) values
(1, 1, 'Conserto', 1200.50, '2025-03-01', '2025-03-05', '2025-03-04', true, 'Finalizada'),
(1, 2, 'Revisão', 800.00, '2025-03-02', '2025-03-06', null, true, 'Aguardando Aprovação'),
(2, 3, 'Conserto', 1500.75, '2025-03-03', '2025-03-07', null, false, 'Em Análise'),
(2, 4, 'Revisão', 600.00, '2025-03-04', '2025-03-08', null, true, 'Aberta');

-- Inserindo dados na tabela Mão de Obra
insert into Mao_de_Obra (idMDOOrdem_de_servico, Servico, Valor) values
(1, 'Troca de embreagem', 500.00),
(1, 'Alinhamento', 100.00),
(2, 'Troca de óleo', 200.00),
(3, 'Reparo no motor', 700.00);

-- Inserindo dados na tabela Peça
insert into Peca (idPOrdem_de_servico, Peca, Valor) values
(1, 'Embreagem nova', 700.50),
(2, 'Óleo sintético', 100.00),
(3, 'Correia dentada', 300.75),
(4, 'Pastilhas de freio', 250.00);

-- Inserindo dados na tabela Mecânico
insert into Mecanico (idMEquipe, Nome, Endereco, Especialidade) values
(1, 'João Pereira', 'Rua A, 123', 'Motor'),
(1, 'Ricardo Mendes', 'Rua B, 456', 'Suspensão'),
(2, 'Luiz Oliveira', 'Rua C, 789', 'Freios'),
(2, 'Fernando Santos', 'Rua D, 321', 'Elétrica');