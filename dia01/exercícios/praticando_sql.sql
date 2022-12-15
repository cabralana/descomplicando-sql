-- Databricks notebook source
-- 01: Selecione todos os clientes paulistanos 

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- 02: Selecione todos os clientes paulistas

SELECT * 
FROM silver_olist.cliente 
WHERE descUF = 'SP'

-- COMMAND ----------



