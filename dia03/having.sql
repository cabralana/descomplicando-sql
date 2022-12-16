-- Databricks notebook source
SELECT *
FROM silver_olist.vendedor

-- COMMAND ----------

-- agrupando por Estados

SELECT descUF,
       COUNT(idVendedor) AS qtVendedorUF
              
FROM silver_olist.vendedor

WHERE descUF IN ('SP', 'MG', 'RJ', 'ES') -- somente estados do Sudeste

GROUP BY descUF -- agrupar por descUF

HAVING COUNT(idVendedor) >= 100 -- filtro para selecionar apenas os estados que tem igual ou mais de 100 vendedores

ORDER BY qtVendedorUF DESC -- ordenar a qtvendedor em ordem decrescente 

-- COMMAND ----------


