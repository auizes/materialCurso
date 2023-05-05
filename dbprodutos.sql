drop database dbprodutos;

create database dbprodutos;

use dbprodutos;

CREATE TABLE tbprodutos 
( 
 CODIGO INT, 
 NOME VARCHAR(50), 
 TIPO VARCHAR(25), 
 QUANTIDADE INT, 
 VALOR DECIMAL(10,2) 
); 

INSERT INTO tbprodutos ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,
'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO tbprodutos ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,
'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO tbprodutos ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3, 'DVD 
PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO tbprodutos ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,
'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO tbprodutos ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,
'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO tbprodutos ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,
'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 ); 
INSERT INTO tbprodutos ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,
'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO tbprodutos ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,
'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO tbprodutos ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,
'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO tbprodutos ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,
'MOUSE', 'INFORMATICA', 400, 60.00 );

select * from tbprodutos;

-- 1. Aumente em 12% o valor dos produtos cujos nomes iniciem com a letra 'F' 

update tbprodutos set valor = valor * 1.12 where nome like 'f%';

-- 2. Aumentar em 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 
-- 600

update tbprodutos set quantidade = quantidade + 50 where valor between 400 and 600;

-- 3. Aplicar um desconto de 50% (*0.5) em todos os produtos que as unidades de estoque 
-- sejam maiores que 300

update tbprodutos set valor = valor * 0.5 where quantidade > 300;

-- 4. Exiba o produto de CODIGO = 4

select * from tbprodutos where codigo = 4;

-- 5. Exibir todos os produtos que não tenham a letra 'Y

select * from tbprodutos where nome not like '%y%';

-- 6. Exibir todos os produtos que se iniciem com nome 'MO' e tenham como tipo as letras 
-- 'MA'

select * from tbprodutos where nome like 'mo%' and tipo like '%ma%';
