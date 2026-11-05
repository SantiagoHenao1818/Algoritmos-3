Funcion subtotal <- LeerPedido()
	Definir subtotal Como Real
	
	Escribir "Digite el subtotal del pedido:"
	Leer subtotal
FinFuncion


Funcion resultado <- CalcularPorcentaje(subtotal, porcentaje)
	Definir subtotal, porcentaje, resultado Como Real
	
	resultado <- subtotal * porcentaje / 100
FinFuncion


SubProceso ImprimirFactura(subtotal, impuesto, propina)
	Definir subtotal, impuesto, propina, total Como Real
	
	total <- subtotal + impuesto + propina
	
	Escribir "FACTURA RESTAURANTE "
	Escribir "Subtotal: ", subtotal
	Escribir "Impuesto (8%): ", impuesto
	Escribir "Propina (10%): ", propina
	Escribir "Total a pagar: ", total
FinSubProceso


Algoritmo FacturaRestaurante
	Definir subtotal, impuesto, propina Como Real
	
	subtotal <- LeerPedido()
	impuesto <- CalcularPorcentaje(subtotal, 8)
	propina <- CalcularPorcentaje(subtotal, 10)
	ImprimirFactura(subtotal, impuesto, propina)
FinAlgoritmo