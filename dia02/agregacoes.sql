-- Databricks notebook source
SELECT COUNT(*) -- linhas não nulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas,
    COUNT (idCliente) AS nrIdClienteNaoNulo 
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas, -- conta linhas nao nulas
    COUNT (idCliente) AS nrIdClienteNaoNulo,  -- conta id de clientes nao nulos
    COUNT(DISTINCT idCliente) AS nrIdClienteDistintos, -- conta id de clientes distintos
    COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de clientes únicos 
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
     COUNT(*) AS qtLinhas, 
     COUNT(DISTINCT idCliente) AS qtClientes, 
     COUNT(DISTINCT idClienteUnico) AS qtClientesUnicos 
     
FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 
-- round = arredondar a operação/ 2 - para duas casas decimais 
-- int = deixar o número inteiro 
-- avg = média 

    ROUND ( AVG(vlPreco), 2)  AS mediaPreco, -- média da coluna vlPreco (preço médio dos produtos)
    
    INT(PERCENTILE(vlPreco, 0.5)) AS medianPreco, -- preço mediano dos produtos 
    
    MAX(vlPreco) AS maxPreco, -- preço máximo da coluna vlPreco
    AVG(vlFrete) AS mediaFrete, -- média da coluna vlFrete (preço médio do frete)
    MAX(vlFrete) AS maxFrete,
    MIN(vlFrete) AS minFrete
    
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT (*)
FROM silver_olist.cliente 
WHERE descUF = 'SC'

