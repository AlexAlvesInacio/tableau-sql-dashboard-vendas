-- Consulta de receita por país
SELECT
    SalesTerritoryCountry,
    SUM(SalesAmount) AS ReceitaTotal
FROM vendas
GROUP BY SalesTerritoryCountry
ORDER BY ReceitaTotal DESC;

-- Consulta de receita por mês
SELECT
    YEAR(OrderDate) AS Ano,
    MONTH(OrderDate) AS Mes,
    SUM(SalesAmount) AS ReceitaMensal
FROM vendas
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY Ano, Mes;
