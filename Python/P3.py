from pickle import FALSE
import random

# En el juego de hoy se produce una lista aleatoria, de cierta longitud, definida en una variable numérica longitud_lista, y entre los límites (numéricos) lim_inferior y lim_superior. La usuaria tiene un intento de adivinar un número de la lista, y si ha acertado devuelve el (primer) índice en que estaba. Al final del juego imprimimos la lista aleatoria para que el usuario la vea. Haz que vuestro output coincida con el resultado de abajo. Como siempre, el código de la plantilla no hay que entenderlo.


# Variables numéricas
index = -1
lim_inferior = 1
lim_superior = 10
intento = input()
longitud_lista = 5
num_list = random.sample(range(lim_inferior, lim_superior),
                         longitud_lista)  # lista aleatoria

# comienza el juego
print("-- ¡Comenzamos el juego! --")
print("La lista aleatoria tiene", longitud_lista,
      "números entre ", lim_inferior, "y", lim_superior, ", di un número a ver si está:")
input()

print("La usuaria dijo el:")
print(str(intento))
print(" -> Estaba en la lista aleatoria?")
# comprueba si el numero metido está en la lista (true o False)
print(intento in num_list)
# despedida
if num_list.count(intento):
    index = num_list.index(intento)
if index >= 0:
    print("Estaba en el sitio", str(index+1) + ", índice", str(index)+".")
print("- - Terminamos el juego. La lista era", num_list)
