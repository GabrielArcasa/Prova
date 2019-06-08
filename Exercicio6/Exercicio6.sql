Select v.idVendedor,v.Nome,Sum(pv.TotalPedido) from PedidoVenda pv
Left Join Vendedor v
 on v.idVendedor = pv.idVendedor
 where
 pv.DataInclusao
between '01-08-2013' AND '31-08-2014'
Group By
v.idNome,v.Nome

Select cli.idCliente,cli.Nome,cli.DataNascimento from Cliente
where MONTH(cli.DataNascimento) = MONTH(Now())


Select cli.Nome, cli.CPF, cli.DataCadastro from Cliente cli
 where cli.idcliente not in (Select pv.IdCliente from PedidoVenda pv)

