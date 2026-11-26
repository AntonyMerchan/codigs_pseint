Funcion num <- tomar_numero
    Definir num Como Entero;
    Repetir
        Escribir "Ingrese un numero entero positivo:";
        Leer num;
        Si num <= 0 Entonces
            Escribir "Error: el numero debe ser entero y positivo.";
        FinSi
    Hasta Que num > 0
FinFuncion
Algoritmo cuenta_regresiva
    Definir num Como Entero;
    num = tomar_numero;
    Escribir "----- Iniciando cuenta regresiva -----";	
    Mientras num >= 0 Hacer
        Escribir num;
        num = num - 1;
    FinMientras
    Escribir "Tiempo cumplido!";
FinAlgoritmo
