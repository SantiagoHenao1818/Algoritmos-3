Algoritmo ValidarPIN
	Definir pin Como Entero
	Definir intentos Como Entero
	Definir acceso Como Lógico
	intentos <- 0
	acceso <- Falso
	Repetir
		Escribir 'Digite PIN'
		Leer pin
		intentos <- intentos+1
		Si pin=2580 Entonces
			acceso <- Verdadero
		FinSi
	Hasta Que acceso O intentos=3
	Si acceso Entonces
		Escribir 'Bienvenido'
	SiNo
		Escribir 'Tarjeta Bloqueada'
	FinSi
FinAlgoritmo
