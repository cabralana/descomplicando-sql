-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE descSituacao = 'delivered'

LIMIT 100

-- selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue, com limite de 100 consultas. 

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE descSituacao = 'shipped' 
AND year (dtPedido) = '2018'

-- selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados de 2018

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year (dtPedido) = '2018'

-- selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados de 2018 ou cancelados de 2018

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year (dtPedido) = '2018'

-- o IN ajuda a melhorar a query no lugar do OR, pois enumera o que você deseja retornar 

-- COMMAND ----------

SELECT *,
  datediff(dtEstimativaEntrega, dtAprovado) AS diffDatasAprovadoPrevisao
  
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year (dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30

-- COMMAND ----------


