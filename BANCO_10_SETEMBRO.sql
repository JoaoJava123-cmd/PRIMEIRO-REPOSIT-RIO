USE db_class;


CREATE VIEW v_itens_vendidos AS 

SELECT 

ITEM.id_item_pedido AS "N°_PEDIDO" ,

ITEM.preco_unit * ITEM.qtd_produto AS "TOTAL" ,

PRODUTO.nome_produto AS "PRODUTO" ,

CLIENTE.nome_cliente AS "CLIENTE" ,

UNIDADE.sigla AS "UNIDADE_PRODUTO" 

FROM tb_item_pedido AS ITEM

INNER JOIN tb_produto AS PRODUTO ON
ITEM.id_produto = PRODUTO.id_produto 

INNER JOIN tb_pedido AS PEDIDO ON 
ITEM.id_pedido = PEDIDO.id_pedido 

INNER JOIN tb_cliente AS CLIENTE ON 
PEDIDO.id_cliente = CLIENTE.id_cliente

INNER JOIN tb_unidade AS UNIDADE ON 
PRODUTO.id_unidade = UNIDADE.id_unidade;