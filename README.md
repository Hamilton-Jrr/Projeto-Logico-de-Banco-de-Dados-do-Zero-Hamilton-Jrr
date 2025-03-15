# Oficina-Esquema-Lógico-do-Zero-para-BD-DIO

Desafio da plataforma DIO para montar um modelo lógico de banco de dados para Oficina.

## Descrição

Este projeto tem como objetivo implementar um modelo lógico de banco de dados baseando no desafio anterior de criar um modelo conceitual para um sistema de controle e gerenciamento de execução de ordens de serviço, seguindo as diretrizes propostas pela plataforma DIO. O desafio é baseado na orientação da especialista Juliana Mascarenhas, com a implementação de soluções para requisitos específicos do sistema.

## Requisitos do Projeto

* Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica.

* Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões  periódicas.

* Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.

* A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra.

* O valor de cada peça também irá compor a OS. O cliente autoriza a execução dos serviços.

* A mesma equipe avalia e executa os serviços.

* Os mecânicos possuem código, nome, endereço e especialidade.

* Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.

* Ordens de serviço com detalhes do cliente e equipe responsável.

* Ordens de serviço em aberto.

* Total faturado.

* Mecânicos e suas especialidades.

* Peças utilizadas em cada ordem de serviço.

* Serviços realizados e valor.

* Equipes que tem mais de uma ordem de serviço.

## Tecnologias Utilizadas

* Banco de Dados Relacional (MySQL)

* Modelagem de Dados (DER - Diagrama Entidade Relacionamento)

* Linguagem SQL

## Autora da Orientação

Juliana Mascarenhas (DIO)

## Licença

###### Este projeto é de livre utilização para fins educacionais.
