Algoritmo TechSolutionsCore
//de melkin barrios
    Definir nombre_operador Como Caracter;
    Definir horas_ejecutadas Como Real;
    
    Definir TARIFA_NORMAL Como Real;
    Definir LIMITE_REGULAR Como Real;
    Definir FACTOR_EXTRA Como Real;
    TARIFA_NORMAL <- 35000;
    LIMITE_REGULAR <- 160;
    FACTOR_EXTRA <- 1.35; // el 35% de recargo
    
    Definir horas_normales, horas_extras Como Real;
    Definir pago_normal, pago_extra, subtotal_a Como Real;
    Definir deduccion_salud, deduccion_pension, deduccion_solidario Como Real;
    Definir total_retenciones, salario_neto Como Real;
    
    Escribir "ID_SISTEMA: Ingrese el nombre del operador:";
    Leer nombre_operador;
    Escribir "ID_SISTEMA: Ingrese las horas ejecutadas:";
    Leer horas_ejecutadas;
    
    Si horas_ejecutadas > LIMITE_REGULAR Entonces
        horas_normales <- LIMITE_REGULAR;
        horas_extras <- horas_ejecutadas - LIMITE_REGULAR;
    Sino
        horas_normales <- horas_ejecutadas;
        horas_extras <- 0;
    FinSi
    
    pago_normal <- horas_normales * TARIFA_NORMAL;
    pago_extra <- horas_extras * (TARIFA_NORMAL * FACTOR_EXTRA);
    subtotal_a <- pago_normal + pago_extra;
    
    Si subtotal_a < 1500000 Entonces
        deduccion_salud <- subtotal_a * 0.04;
        deduccion_pension <- 0;
        deduccion_solidario <- 0;
    Sino
        Si subtotal_a >= 1500000 Y subtotal_a < 3000000 Entonces
            deduccion_salud <- subtotal_a * 0.06;
            deduccion_pension <- subtotal_a * 0.02;
            deduccion_solidario <- 0;
        Sino 
            deduccion_salud <- subtotal_a * 0.08;
            deduccion_pension <- subtotal_a * 0.04;
            deduccion_solidario <- subtotal_a * 0.01;
        FinSi
    FinSi
    
    total_retenciones <- deduccion_salud + deduccion_pension + deduccion_solidario;
    salario_neto <- subtotal_a - total_retenciones;
    
    Escribir "----------------------------------------------------";
    Escribir "                TECHSOLUTIONS CORE                  ";
    Escribir "----------------------------------------------------";
    Escribir "OPERADOR: ", nombre_operador;
    Escribir "HORAS TOTALES: ", horas_ejecutadas;
    Escribir "----------------------------------------------------";
    Escribir "Subtotal de Salario Bruto:   $", subtotal_a;
    Escribir "Total de Retenciones:        $", total_retenciones;
    Escribir "----------------------------------------------------";
    Escribir "SALARIO NETO VALIDADO:       $", salario_neto;
    Escribir "----------------------------------------------------";

    
FinAlgoritmo
