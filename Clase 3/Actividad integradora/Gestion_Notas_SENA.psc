Algoritmo Gestion_Notas_SENA
    // de Melkin barrios 
    Definir nombre Como Cadena
    Definir ficha Como Entero
    Definir nota1, nota2, nota3, promedio, suma, notaMayor, notaMenor Como Real
    Definir contadorNotasAltas Como Entero
    Definir estado, desempeño, observacion Como Cadena
    
    Escribir "Ingrese nombre completo del aprendiz:"
    Leer nombre
    Escribir "Ingrese número de ficha:"
    Leer ficha
    Escribir "Ingrese Nota 1 (0.0 - 5.0):"
    Leer nota1
    Si nota1 < 0 O nota1 > 5 Entonces
        Escribir "Error: Nota 1 es inválida."
       Esperar Tecla
        
    FinSi
    Escribir "Ingrese Nota 2 (0.0 - 5.0):"
    Leer nota2
    Si nota2 < 0 O nota2 > 5 Entonces
        Escribir "Error: Nota 2 es inválida."
        Esperar Tecla
        
    FinSi
    Escribir "Ingrese Nota 3 (0.0 - 5.0):"
    Leer nota3
    Si nota3 < 0 O nota3 > 5 Entonces
        Escribir "Error: Nota 3 es inválida."
        Esperar Tecla
        
    FinSi
    suma <- nota1 + nota2 + nota3
    promedio <- suma / 3
    Si nota1 >= nota2 Y nota1 >= nota3 Entonces
        notaMayor <- nota1
    Sino
        Si nota2 >= nota1 Y nota2 >= nota3 Entonces
            notaMayor <- nota2
        Sino
            notaMayor <- nota3
        FinSi
    FinSi
    Si nota1 <= nota2 Y nota1 <= nota3 Entonces
        notaMenor <- nota1
    Sino
        Si nota2 <= nota1 Y nota2 <= nota3 Entonces
            notaMenor <- nota2
        Sino
            notaMenor <- nota3
        FinSi
    FinSi
    contadorNotasAltas <- 0
    Si nota1 > 4.0 Entonces contadorNotasAltas <- contadorNotasAltas + 1 
	FinSi
Si nota2 > 4.0 Entonces contadorNotasAltas <- contadorNotasAltas + 1 
FinSi
Si nota3 > 4.0 Entonces contadorNotasAltas <- contadorNotasAltas + 1 
FinSi
    Si promedio >= 3.5 Entonces
        estado <- "APROBADO"
    Sino
        estado <- "REPROBADO"
    FinSi
    Si promedio >= 4.8 Entonces
        desempeño <- "SOBRESALIENTE - Candidato a Beca"
    Sino
        Si promedio >= 4.0 Entonces
            desempeño <- "EXCELENTE - Felicitaciones"
        Sino
            Si promedio >= 3.5 Entonces
                desempeño <- "BUENO - Sigue adelante"
            Sino
                Si promedio >= 3.0 Entonces
                    desempeño <- "REGULAR - Necesita mejorar"
                Sino
                    desempeño <- "DEFICIENTE - Requiere refuerzo urgente"
                FinSi
            FinSi
        FinSi
    FinSi
    observacion <- "Ninguna" 
    Si promedio >= 4.5 Y contadorNotasAltas > 2 Entonces
        observacion <- "¡Recomendado para Monitor de Grupo!"
    Sino 
        Si promedio < 3.5 O (nota1 < 3.0 O nota2 < 3.0 O nota3 < 3.0) Entonces
            observacion <- "Requiere plan de mejoramiento."
        FinSi
    FinSi
    Escribir "-------------------------------------------"
    Escribir "         REPORTE ACADÉMICO - SENA         ?"
    Escribir "-------------------------------------------"
    Escribir "? Nombre:       ", nombre
    Escribir "? Ficha:        ", ficha
    Escribir "-------------------------------------------"
    Escribir "? Nota 1:       ", nota1
    Escribir "? Nota 2:       ", nota2
    Escribir "? Nota 3:       ", nota3
    Escribir "? Suma Total:   ", suma
    Escribir "? Promedio:     ", promedio
    Escribir "? Nota Mayor:   ", notaMayor
    Escribir "? Nota Menor:   ", notaMenor
    Escribir "? Notas > 4.0:  ", contadorNotasAltas
    Escribir "-------------------------------------------"
    Escribir "? Estado:       ", estado
    Escribir "? Desempeño:    ", desempeño
    Escribir "? Observación:  ", observacion
    Escribir "-------------------------------------------"
FinAlgoritmo
