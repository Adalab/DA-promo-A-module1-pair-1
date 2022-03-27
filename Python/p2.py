## Pair Programming 2 - Pair 1 - Lara, Laura  - Listas 1 - Adivinar número metiendo lista ##

import random

# Variables numéricas

lim_inferior = 0
lim_superior = 12

# Cadenas fijas de texto
print("\n")
bievenida = "-- ¡Comenzamos el juego! - -"
str_input = "Dinos una lista de números, separados por espacios: "
lista_usuario = "La lista facilitada por el usuario es: "
respuesta = "¿Han adivinado el número secreto?"
despedida = "Terminamos el juego. El número secreto era..."

# Cantidades calculadas
numero_secreto = random.randint(lim_inferior, lim_superior)


# Comienza el juego
print(bievenida)

#input de la usuaria
num_list = list(int(num) for num in input(str_input).strip().split())
print(lista_usuario)
print(num_list)

#compramos si la lista dada contiene el número secreto
print(respuesta)
print(numero_secreto in num_list)

#final de juego
print(despedida, numero_secreto)