## Pair Programming 3 - Pair 1 - Lara, Laura  - Listas 2 - Adivinar núm metiendo lista y devuelve índice ##

from pickle import FALSE
import random

# Variables numéricas
index = -1
lim_inferior = 1
lim_superior = 6
longitud_lista = 5
num_list = random.sample(range(lim_inferior, lim_superior),
                         longitud_lista)  # lista aleatoria

# Comienza el juego
print("\n")
print("-- ¡Comenzamos el juego! --")
print("La lista aleatoria tiene", longitud_lista,
      "números entre ", lim_inferior, "y", lim_superior, ", di un número a ver si está:")

#input del usuario
intento = int(input())
print("La usuaria dijo el:")
print(intento)
print("\n")
print(" -> ¿Estaba en la lista secreta? ------->", intento in num_list)
print("\n")

# Despedida
if num_list.count(intento): 
    index = num_list.index(intento)
if index >= 0: 
    print("Estaba en la posición", str(index+1) + ", índice", str(index)+".")
print("La lista secreta era", num_list)
print("-- Terminamos el juego. Hasta pronto! --") 
