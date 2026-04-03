Algoritmo Terminal_Cripto_ATM
    //de melkin barrios 
    Definir saldodisponible Como Real
    Definir seleccion, continuar Como Entero
    Definir montoretiro, inversionusd, btcadquirido, preciobtc Como Real
    
    saldo_disponible <- 5000.00 
    precio_btc <- 60000.00     
    continuar <- 1
    
    Mientras continuar = 1 Hacer
        Escribir "=== TERMINAL DE CONEXIÓN CRIPTO ==="
        Escribir "[1] Consultar estado de cuenta corriente"
        Escribir "[2] Retiro estricto de fondos USD"
        Escribir "[3] Ejecutar Orden de Compra de Bitcoin (BTC)"
        Escribir "[4] Finalizar sesión"
        Escribir "Seleccione una instrucción: "
        Leer seleccion
        
        Segun seleccion Hacer
            1:
                Escribir "Consulta exitosa: El saldo_disponible es de $", saldo_disponible, " USD."
                
            2:
                Escribir "Ingrese el monto a retirar:"
                Leer monto_retiro
                Si monto_retiro > saldo_disponible Entonces
                    Escribir "EXCEPCIÓN: Flujo de fondos insuficientes en la bóveda actual"
                Sino
                    saldo_disponible <- saldo_disponible - monto_retiro
                    Escribir "Registro exitoso. Se han retirado $", monto_retiro, " USD de su cuenta."
                FinSi
                
            3:
                Escribir "PRECIO REFERENCIAL BTC: $60,000.00 USD"
                Escribir "Ingrese el valor a invertir para su campra:"
                Leer inversion_usd
                
                Si inversion_usd > saldo_disponible Entonces
                    Escribir "EXCEPCIÓN: Saldo insuficiente para su compra."
                Sino
                    btc_adquirido <- inversion_usd / precio_btc
                    saldo_disponible <- saldo_disponible - inversion_usd
                    Escribir "--- ORDEN EJECUTADA ---"
                    Escribir "Inversión: $", inversion_usd, " USD"
                    Escribir "Diferencial BTC adquirido: ", btc_adquirido, " BTC"
                    Escribir "Nuevo saldo en cuenta: $", saldo_disponible, " USD"
                FinSi
                
            4:
                Escribir "Disparando protocolo de cierre... Conexión finalizada."
                continuar <- 0
                
            De Otro Modo:
                Escribir "ERROR: Protocolo inexistente. Por favor, seleccione una opción válida (1-4)."
        FinSegun
        
        Escribir "" 
    FinMientras
    
FinAlgoritmo