-- Databricks notebook source
-- selecione tudo da tabela silver_olist.pedido

SELECT * FROM silver_olist.pedido

-- COMMAND ----------

SELECT idPedido, 
       descSituacao
       
FROM silver_olist.pedido

LIMIT 10

-- seleciona as colunas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT *, 
    DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasEntregaEfetiva

FROM silver_olist.pedido



-- COMMAND ----------



-- COMMAND ----------


