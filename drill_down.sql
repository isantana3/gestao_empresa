use dw_comercial

SELECT Num_venda, Quant_Vendas, SetorVendas, CodigoProduto, Produto, NumContrato,
venda_ano, venda_trimestre, venda_mes, venda_dia_mes, ValorVendas
FROM dim_dw_data, dim_dw_vendas, dim_dw_estoque, dim_dw_contrato, fatos_dw_comercial
WHERE 
Id_DimData=Id_Data and Id_DimVendas=Id_Vendas and 
Id_DimEstoque=Id_Estoque and Id_DimContrato=Id_Contrato
GROUP BY Num_venda, Quant_Vendas, SetorVendas, CodigoProduto, Produto, NumContrato,
venda_ano, venda_trimestre, venda_mes, venda_dia_mes WITH ROLLUP;


SELECT CodigoEntrada, Quant_Compras, GrupoCompra, CodigoProduto, Produto, NumContrato,
compra_ano,compra_trimestre,compra_mes,compra_dia_mes, Valor_compras
FROM dim_dw_data, dim_dw_compras, dim_dw_estoque, dim_dw_contrato, fatos_dw_comercial
WHERE
Id_DimData=Id_Data and Id_DimCompras=Id_Compras 
and Id_DimEstoque=Id_Estoque and Id_DimContrato=Id_Contrato
GROUP BY Num_venda, Quant_Vendas, SetorVendas, CodigoProduto, Produto, NumContrato,
compra_ano,compra_trimestre,compra_mes,compra_dia_mes WITH ROLLUP;


SELECT NumContrato, Cliente, EnderecoFornecedor, CodigoEntrada, Num_Saida, vigencia_ano,
vigencia_trimestre,vigencia_mes,vigencia_dia_mes, ValorContrato
FROM dim_dw_data, dim_dw_compras, dim_dw_estoque, dim_dw_contrato, fatos_dw_comercial, dim_dw_vendas
WHERE 
Id_DimData=Id_Data and Id_DimCompras=Id_Compras and 
Id_DimEstoque=Id_Estoque and Id_DimContrato=Id_Contrato and Id_DimVendas=Id_Vendas
GROUP BY  NumContrato, Cliente, EnderecoFornecedor, CodigoEntrada, Num_Saida, 
vigencia_ano,vigencia_trimestre,vigencia_mes,vigencia_dia_mes WITH ROLLUP;



SELECT Quant_Estoque, Grupo, NumContrato, Cliente, EnderecoFornecedor, CodigoEntrada, 
Num_Saida, financeiro_ano,financeiro_trimestre,financeiro_mes,financeiro_dia_mes, Valor_Estoque
FROM dim_dw_data, dim_dw_compras, dim_dw_estoque, dim_dw_contrato, fatos_dw_comercial, dim_dw_vendas
WHERE 
Id_DimData=Id_Data and Id_DimCompras=Id_Compras and Id_DimEstoque=Id_Estoque 
and Id_DimContrato=Id_Contrato and Id_DimVendas=Id_Vendas
GROUP BY Quant_Estoque, Grupo, NumContrato, Cliente, EnderecoFornecedor, CodigoEntrada, 
Num_Saida, financeiro_ano,financeiro_trimestre,financeiro_mes,financeiro_dia_mes WITH ROLLUP;


SELECT OrigemCarga, DestinoCarga, Cliente, NumeroVenda, NumContrato, Produto, Motorista, Transportador, 
veiculo, entrega_ano,entrega_trimestre,entrega_mes,entrega_dia_mes, `Local`, Quant_litro, Preco_total 
FROM dim_dw_data, dim_dw_transporte, dim_dw_financeiro, dim_dw_abastecimento, dim_dw_estoque, dim_dw_contrato, fatos_dw_comercial
WHERE 
Id_DimData=Id_Data and Id_DimTransporte=Id_Transporte and Id_DimEstoque=Id_Estoque and 
Id_DimContrato=Id_Contrato and Id_DimFinanceiro=Id_Financeiro and Id_DimAbastecimento=Id_Abastecimento
GROUP BY  OrigemCarga, DestinoCarga, Cliente, NumeroVenda, NumContrato, Produto, Motorista, Transportador,
 veiculo, entrega_ano,entrega_trimestre,entrega_mes,entrega_dia_mes, `Local`, Quant_litro,  WITH ROLLUP;