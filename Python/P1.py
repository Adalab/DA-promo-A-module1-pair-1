import math
import random
from re import I, L

# Variables numéricas
lim_superior = 4
lim_inferior = 1
intentos = 1
bienvenida = "-- ¡Comenzamos el juego! --"
num = input()
intentos_permitidos = round(math.log(lim_superior - lim_inferior + 1, 2))
numero_secreto = random.randint(lim_inferior, lim_superior)


# Intento 1: 4
# Inicio del juego

print("__¡¡Comenzamos el juego!!___")
print('Tienes', intentos, ' intentos para adivinar un número que está entre',
      lim_inferior, 'y', lim_superior, '.')
print("Pon un número:")
input()
print("El número que has elegido es", num)
print("-- Terminamos el juego. El número era ",
      numero_secreto,  ", ¿lo adivinaste? --")
