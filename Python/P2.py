import random


# Variables numéricas
num = input()
lim_inferior = 0
lim_superior = 100
# Cadenas fijas de texto
bievenida = "-- ¡Comenzamos el juego! - -"
str_input = "Dinos una lista de números, separados por espacios: "
lista_usuario = "La lista facilitada por el usuario es: "
respuesta = "¿Han adivinado el número secreto?"
despedida = "Terminamos el juego. El número secreto era..."
# Cantidades calculadas

numero_secreto = random.randint(lim_inferior, lim_superior)

# Inicio del juego


# Propiedades de la lista

# Han adivinado el número secreto?

# Fin del jueg
# Tiene 6 elementos entre 4 a 37.

# Han adivinado el número secreto?
# True

# -- Terminamos el juego. El número era 4. - - */

# AQUI ESTÁ EL JUEGO -->

print(bievenida)

num_list = list(int(num) for num in input(str_input).strip().split())

print(lista_usuario)
print(num_list)
print(respuesta)


print(num in num_list == numero_secreto)


print(despedida, numero_secreto)
