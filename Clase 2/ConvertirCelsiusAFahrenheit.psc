
	Algoritmo ConvertirCelsiusAFahrenheit
		
		Definir celsius, fahrenheit Como Real
		Definir contador Como Entero
		
		Escribir "--- Conversor de Temperatura ---"
		
		
		Para contador <- 1 Hasta 3 Con Paso 1 Hacer
			
			Escribir "Intento ", contador, ": Ingrese los grados Celsius (°C):"
			Leer celsius
			
			
			fahrenheit <- (celsius * 9 / 5) + 32
			
			
			Escribir celsius, " °C equivale a ", fahrenheit, " °F"
			Escribir "--------------------------------"
			
		FinPara
		
		Escribir "Proceso de prueba completado."	
FinAlgoritmo

