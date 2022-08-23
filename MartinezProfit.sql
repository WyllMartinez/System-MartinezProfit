create table tab_clientes(
	codigo serial primary key,
	nome varchar(60),
	pessoa char(1) default 'F',
	cnpj_cpf varchar(20),
	ie_rg varchar(18),
	endereco varchar(60),
	numero varchar(10),
	bairro varchar(50),
	complemento varchar(40),
	cep varchar(9),
	codigo_cidade integer,
	nome_cidade varchar(100),
	codigo_uf integer,
	nome_uf varchar(2)
)
create table tab_produtos(
	codigo serial primary key,
	descricao varchar(100),
	preco numeric(14,2),
	estoque integer,
	cst_icms varchar(3),
	cst_pis varchar(3),
	cst_cofins varchar(3),
	cst_ipi varchar(3),
	aliq_icms numeric(14,2),
	aliq_pis numeric(14,2),
	aliq_cofins numeric(14,2),
	aliq_ipi numeric(14,2),
	desconto numeric(14,2)
) 
create table tab_transportadora(
	codigo serial primary key,
	nome varchar(60),
	pessoa char(1) default 'F',
	cnpj_cpf varchar(20),
	ie_rg varchar(18),
	endereco varchar(60),
	numero varchar(10),
	bairro varchar(50),
	complemento varchar(40),
	cep varchar(9),
	codigo_cidade integer,
	nome_cidade varchar(100),
	codigo_uf integer,
	nome_uf varchar(2)
) 
create table tab_nota(
	numero serial primary key, 
	emissao date,
	tipo char(1) default 'S',
	codigo_cliente integer references tab_clientes(codigo),
	nome_cliente varchar(100),
	valor_produtos numeric(14,2),
	valor_icms numeric(14,2),
	valor_pis numeric(14,2),
	valor_cofins numeric(14,2),
	valor_ipi numeric(14,2),
	valor_desconto numeric(14,2),
	valor_total_nota numeric(14,2),
	dinheiro numeric(14,2),
	cartao_debito numeric(14,2),
	cartao_credito numeric(14,2),
	cheque numeric(14,2),
	outros numeric(14,2)
	
)


create table itens_nota(
	numero_nota integer references tab_nota(numero),
	codigo_produto integer references tab_produtos(codigo),
	descricao_produto varchar(100),
	qtd numeric(14,3),
	valor_un numeric(14,2),
	valor_total numeric(14,2),
	cst_icms varchar(3),
	cst_pis varchar(3),
	cst_cofins varchar(3),
	cst_ipi varchar(3),
	aliq_icms numeric(14,2),
	aliq_pis numeric(14,2),
	aliq_cofins numeric(14,2),
	aliq_ipi numeric(14,2),
	desconto numeric(14,2)
	
	) 
create table tab_nfce(
	numero serial primary key, 
	emissao date,
	tipo char(1) default 'S',
	codigo_cliente integer references tab_clientes(codigo),
	nome_cliente varchar(100),
	valor_produtos numeric(14,2),
	valor_icms numeric(14,2),
	valor_pis numeric(14,2),
	valor_cofins numeric(14,2),
	valor_ipi numeric(14,2),
	valor_desconto numeric(14,2),
	valor_total_nota numeric(14,2),
	dinheiro numeric(14,2),
	cartao_debito numeric(14,2),
	cartao_credito numeric(14,2),
	cheque numeric(14,2),
	outros numeric(14,2)
	
)

create table itens_nota_nfce(
	numero_nota integer references tab_nota(numero),
	codigo_produto integer references tab_produtos(codigo),
	descricao_produto varchar(100),
	qtd numeric(14,3),
	valor_un numeric(14,2),
	valor_total numeric(14,2),
	cst_icms varchar(3),
	cst_pis varchar(3),
	cst_cofins varchar(3),
	cst_ipi varchar(3),
	aliq_icms numeric(14,2),
	aliq_pis numeric(14,2),
	aliq_cofins numeric(14,2),
	aliq_ipi numeric(14,2),
	desconto numeric(14,2)
	
	) 
	
	
	select * from tab_produtos