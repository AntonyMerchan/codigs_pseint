Funcion letra <- ingresar_letra
    Escribir "Ingrese una letra:"
    Leer letra
FinFuncion
Funcion valor_letra <- asignar_letra(letra)
    valor_letra <- letra
FinFuncion
Funcion mostrar_letra(valor_letra)
    Escribir "La letra asignada es: ", valor_letra
FinFuncion
Algoritmo Letra_Usuario
    letra <- ingresar_letra()
    valor_letra <- asignar_letra(letra)
    mostrar_letra(valor_letra)
FinAlgoritmo
