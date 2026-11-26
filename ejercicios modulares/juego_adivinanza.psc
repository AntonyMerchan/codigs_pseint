Funcion secreto <- generar_secreto
    Definir secreto Como Entero;
    secreto = Aleatorio(1, 100);
FinFuncion
Funcion intento <- tomar_intento
    Definir intento Como Entero;
    Escribir "Ingrese su intento:";
    Leer intento;
FinFuncion
Funcion pista <- dar_pista(intento, secreto)
    Definir pista Como Caracter;
    Si intento < secreto Entonces
        pista = "El numero es MAYOR.";
    SiNo
        Si intento > secreto Entonces
            pista = "El numero es MENOR.";
        SiNo
            pista = "Correcto!";
        FinSi
    FinSi
FinFuncion
Funcion mostrar_mensaje(intentos)
    Escribir "Felicidades! Adivinaste el numero en ", intentos, " intentos.";
FinFuncion
Algoritmo juego_adivinanza
    Definir secreto, intento, intentos Como Entero;
    Definir pista Como Caracter;
    secreto = generar_secreto();
    intentos = 0;
    intento = 0;
    Escribir "----- Juego de adivinanza -----";
    Escribir "He pensado un numero entre 1 y 100.";
    Mientras intento <> secreto Hacer
        intento = tomar_intento();
        intentos = intentos + 1;
        pista = dar_pista(intento, secreto);
		
        Si intento <> secreto Entonces
            Escribir "Pista: ", pista;
        FinSi
    FinMientras
    mostrar_mensaje(intentos);
FinAlgoritmo

