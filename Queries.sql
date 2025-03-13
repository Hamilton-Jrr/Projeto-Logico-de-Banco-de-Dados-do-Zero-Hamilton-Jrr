use oficina;

-- Ordens de serviço com detalhes do cliente e equipe responsável
select os.idOrdem_de_Servico, os.categoria, os.valor_total, os.data_de_emissao, os.data_de_entrega, os.status, 
       c.nome as cliente, c.veiculo, e.nome as equipe
from Ordem_de_Servico os
join Cliente c on os.idODSCliente = c.idCliente
join Equipe e on os.idODSEquipe = e.idEquipe;

-- Ordens de serviço em aberto
select * from Ordem_de_Servico where status in ('Aberta', 'Em análise', 'Aguardando Aprovação', 'Em Execução');

-- Total faturado
select sum(valor_total) as total_faturado from Ordem_de_Servico where status in ('Finalizada', 'Entregue');

-- Mecânicos e suas especialidades
select m.nome, m.especialidade, e.nome as equipe from Mecanico m
join Equipe e on m.idMEquipe = e.idEquipe;

-- Peças utilizadas em cada ordem de serviço
select p.idPeca, p.peca, p.valor, os.idOrdem_de_Servico, c.nome as cliente
from Peca p
join Ordem_de_Servico os on p.idPOrdem_de_servico = os.idOrdem_de_Servico
join Cliente c on os.idODSCliente = c.idCliente;

-- Serviços realizados e valor
select mdo.servico, mdo.valor, os.idOrdem_de_Servico, c.nome as cliente
from Mao_de_Obra mdo
join Ordem_de_Servico os on mdo.idMDOOrdem_de_servico = os.idOrdem_de_Servico
join Cliente c on os.idODSCliente = c.idCliente;

-- Equipes que tem mais de uma ordem de serviço
select e.nome as equipe, count(os.idOrdem_de_Servico) as total_ordens
from Ordem_de_Servico os
join Equipe e on os.idODSEquipe = e.idEquipe
group by e.nome
having count(os.idOrdem_de_Servico) > 1
order by total_ordens desc;