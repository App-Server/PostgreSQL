/* acessar o postgre  */
sudo -u postgres psql

/* lista os bancos */
\l

/* consultar lista de bancos de dados  */
SELECT datname FROM pg_database;

/* selecionar um banco e ver as tabelas */
\c nome_do_banco

/* lista as tabelas do banco de dados */
\dt

-- q: Sair do pager e voltar ao prompt do PostgreSQL.
-- j ou seta para baixo: Rolar para baixo uma linha.
-- k ou seta para cima: Rolar para cima uma linha.
-- barra de espaço ou Page Down: Rolar para baixo uma página.
-- b ou Page Up: Rolar para cima uma página.

/* lista usuarios do banco de bados postegres */
SELECT usename FROM pg_catalog.pg_user;

/* como criar usuario no postgre */
CREATE ROLE nome_do_usuario SUPERUSER LOGIN PASSWORD 'senha';

/* criar tabela no banco de bados */
CREATE TABLE task (
    id SERIAL PRIMARY KEY,
    data_do_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    titulo_da_tarefa VARCHAR(255) NOT NULL,
    quem_vai_executar_a_tarefa VARCHAR(8000) NOT NULL,
    descricao_da_atividade VARCHAR(255) NOT NULL,
    prioridade VARCHAR(40) NOT NULL,
    Prazo_de_entrega VARCHAR(20) NOT NULL
);

/* atualizar colunas da tabela */
ALTER TABLE task
ALTER COLUMN quem_vai_executar_a_tarefa TYPE VARCHAR(40),
ALTER COLUMN descricao_da_atividade TYPE VARCHAR(10000),
ALTER COLUMN prioridade TYPE VARCHAR(40),
ALTER COLUMN Prazo_de_entrega TYPE VARCHAR(20);

/* atualizar colunas da tabela */
ALTER TABLE clientes
ADD COLUMN id SERIAL PRIMARY KEY,
ADD COLUMN data_do_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN nome VARCHAR(255),
ADD COLUMN email VARCHAR(255),
ADD COLUMN telefone VARCHAR(20);

/* ATUALIZAR O VARCHAR  */ 
ALTER TABLE tb_intracom
ALTER COLUMN titulo_do_comunicado TYPE VARCHAR(8000),
ALTER COLUMN descricao_do_comunicado TYPE VARCHAR(8000);















