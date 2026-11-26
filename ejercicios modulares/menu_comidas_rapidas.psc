Funcion opcion <- tomar_opcions
    Definir opcions Como Caracter;
    Repetir
        Escribir "----- Menu -----";
        Escribir "1. Hamburguesa - 18000";
        Escribir "2. Perro caliente - 12000";
        Escribir "3. Papas fritas - 8000";
        Escribir "4. Pizza personal - 20000";
        Escribir "Ingrese el numero de la opcion:";
        Leer opcions;
        Si opcions <> "1" Y opcions <> "2" Y opcions <> "3" Y opcions <> "4" Entonces
            Escribir "Error: opcion invalida.";
        FinSi
    Hasta Que opcions = "1" O opcions = "2" O opcions = "3" O opcions = "4"
FinFuncion
Funcion precio <- obtener_precio(opcions)
    Definir precio Como Real;
    Segun opcion Hacer
        "1": precio = 18000;
        "2": precio = 12000;
        "3": precio = 8000;
        "4": precio = 20000;
        De Otro Modo: precio = 0;
    FinSegun
FinFuncion
Funcion cant <- tomar_cantidad
    Definir cant Como Entero;
    Repetir
        Escribir "Ingrese la cantidad:";
        Leer cant;
        Si cant <= 0 Entonces
            Escribir "Error: la cantidad debe ser positiva.";
        FinSi
    Hasta Que cant > 0
FinFuncion
Funcion mostrar_mensaje(total, items)
    Escribir "----- Resumen del pedido -----";
    Escribir "Items pedidos: ", items;
    Escribir "Costo total: ", total;
    Escribir "Gracias por su compra!";
FinFuncion
Algoritmo menu_comidas_rapidas
    Definir opcions, respuesta Como Caracter;
    Definir precio, total Como Real;
    Definir cant, items Como Entero;
    total = 0;
    items = 0;
    respuesta = "s";
    Mientras respuesta = "s" Hacer
        opcions = tomar_opcions();
        cant = tomar_cantidad();
        precio = obtener_precio(opcion);
        total = total + (precio * cant);
        items = items + cant;
        Escribir "Costo parcial: ", total;
        Escribir "Desea pedir algo mas? (s/n):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
    mostrar_mensaje(total, items);
FinAlgoritmo