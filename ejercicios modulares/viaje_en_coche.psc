Funcion distancia <- tomar_distancia
    Definir distancia Como Real;
    Repetir
        Escribir "Ingrese la distancia total del viaje (km):";
        Leer distancia;
        Si distancia <= 0 Entonces
            Escribir "Error: la distancia debe ser un valor positivo.";
        FinSi
    Hasta Que distancia > 0
FinFuncion
Funcion velocidad <- tomar_velocidad
    Definir velocidad Como Real;
    Repetir
        Escribir "Ingrese la velocidad promedio (km/h):";
        Leer velocidad;
        Si velocidad <= 0 Entonces
            Escribir "Error: la velocidad debe ser un valor positivo.";
        FinSi
    Hasta Que velocidad > 0
FinFuncion
Funcion mostrar_mensaje(distancia, velocidad, tiempo)
    Escribir "----- Resultado del viaje -----";
    Escribir "Distancia: ", distancia, " km";
    Escribir "Velocidad promedio: ", velocidad, " km/h";
    Escribir "Tiempo estimado: ", tiempo, " horas";
FinFuncion
Algoritmo viaje_en_coche
    Definir distancia, velocidad, tiempo Como Real;
    Definir respuesta Como Caracter;	
    respuesta = "s";
    Mientras respuesta = "s" Hacer
        distancia = tomar_distancia();
        velocidad = tomar_velocidad();
        tiempo = distancia / velocidad;
        mostrar_mensaje(distancia, velocidad, tiempo);
		
        Escribir "Desea simular otro viaje? (s/n):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
FinAlgoritmo
