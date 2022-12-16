-- Databricks notebook source
SELECT 
    descUF, 
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY descUF


-- COMMAND ----------

SELECT 
    descUF, 
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY 2

-- ordenar pela segunda coluna 

-- COMMAND ----------

SELECT 
    descUF, 
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY qtClienteEstado


-- COMMAND ----------

SELECT 
    descUF, 
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY COUNT(DISTINCT idClienteUnico) 


-- COMMAND ----------

SELECT 
    descUF, 
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY qtClienteEstado desc
-- desc = ordenar de forma decrescente 


-- COMMAND ----------

SELECT 
    descUF, 
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY qtClienteEstado desc

LIMIT 1
-- LIMIT, no caso 1, traz apenas o primeiro 

-- COMMAND ----------


