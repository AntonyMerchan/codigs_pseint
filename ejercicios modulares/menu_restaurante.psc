Funcion plato <- tomar_plato
    Definir plato Como Caracter;
    Repetir
        Escribir "Seleccione un plato:";
        Escribir "1. Bandeja paisa - 25000";
        Escribir "2. Ajiaco - 20000";
        Escribir "3. Hamburguesa - 18000";
        Leer plato;
        Si plato <> "1" Y plato <> "2" Y plato <> "3" Entonces
            Escribir "Error: opcion invalida.";
        FinSi
    Hasta Que plato = "1" O plato = "2" O plato = "3"
FinFuncion
Funcion bebida <- tomar_bebida
    Definir bebida Como Caracter;
    Repetir
        Escribir "Seleccione una bebida:";
        Escribir "1. Gaseosa - 6000";
        Escribir "2. Jugo natural - 8000";
        Escribir "3. Agua - 4000";
        Leer bebida;
        Si bebida <> "1" Y bebida <> "2" Y bebida <> "3" Entonces
            Escribir "Error: opcion invalida.";
        FinSi
    Hasta Que bebida = "1" O bebida = "2" O bebida = "3"
FinFuncion
Funcion precio <- precio_plato(opcion)
    Definir precio Como Real;
    Segun opcion Hacer
        "1": precio = 25000;
        "2": precio = 20000;
        "3": precio = 18000;
        De Otro Modo: precio = 0;
    FinSegun
FinFuncion
Funcion precio <- precio_bebida(opcion)
    Definir precio Como Real;
    Segun opcion Hacer
        "1": precio = 6000;
        "2": precio = 8000;
        "3": precio = 4000;
        De Otro Modo: precio = 0;
    FinSegun
FinFuncion
Funcion pago <- tomar_pago
    Definir pago Como Caracter;
    Repetir
        Escribir "Metodo de pago (efectivo, tarjeta, cheque):";
        Leer pago;
        pago = Minusculas(pago);
        Si pago <> "efectivo" Y pago <> "tarjeta" Y pago <> "cheque" Entonces
            Escribir "Error: metodo invalido.";
        FinSi
    Hasta Que pago = "efectivo" O pago = "tarjeta" O pago = "cheque"
FinFuncion
Funcion desc <- porcentaje_descuento(pago)
    Definir desc Como Real;
    Segun pago Hacer
        "efectivo": desc = 0.10;
        "tarjeta":  desc = 0.05;
        De Otro Modo: desc = 0;
    FinSegun
FinFuncion
Funcion mostrar_mensaje(subtotal, desc, total)
    Escribir "----- Resumen de la cuenta -----";
    Escribir "Subtotal: ", subtotal;
    Escribir "Descuento aplicado: ", desc * 100, "%";
    Escribir "Total a pagar: ", total;
FinFuncion
Algoritmo menu_restaurante
    Definir opPlato, opBebida, pago Como Caracter;
    Definir subtotal, total, desc Como Real;
    subtotal = 0;
    opPlato = tomar_plato();
    subtotal = subtotal + precio_plato(opPlato);
    opBebida = tomar_bebida();
    subtotal = subtotal + precio_bebida(opBebida);
    pago = tomar_pago();
    desc = porcentaje_descuento(pago);
    total = subtotal - (subtotal * desc);
    mostrar_mensaje(subtotal, desc, total);
FinAlgoritmo

