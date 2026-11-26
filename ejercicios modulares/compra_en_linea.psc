Funcion precio <- tomar_precio
    Definir precio Como Real;
    Repetir
        Escribir "Ingrese el precio del producto:";
        Leer precio;
        Si precio <= 0 Entonces
            Escribir "Error: el precio debe ser un valor positivo.";
        FinSi
    Hasta Que precio > 0
FinFuncion
Funcion cant <- tomar_cantidad
    Definir cant Como Entero;
    Repetir
        Escribir "Ingrese la cantidad que desea comprar:";
        Leer cant;
        Si cant <= 0 Entonces
            Escribir "Error: la cantidad debe ser un numero positivo.";
        FinSi
    Hasta Que cant > 0
FinFuncion
Funcion mostrar_mensaje(total, items)
    Escribir "----- Resumen de la compra -----";
    Escribir "Productos agregados: ", items;
    Escribir "Costo total: ", total;
FinFuncion
Algoritmo compra_en_linea
    Definir precio, total Como Real;
    Definir cant, items Como Entero;
    Definir respuesta Como Caracter;
    total = 0;
    items = 0;
    respuesta = "s";
    Mientras respuesta = "s" Hacer
        precio = tomar_precio();
        cant = tomar_cantidad();
        total = total + (precio * cant);
        items = items + 1;
        Escribir "Costo parcial: ", total;
		
        Escribir "Desea agregar otro producto? (s/n):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
    mostrar_mensaje(total, items);
FinAlgoritmo

