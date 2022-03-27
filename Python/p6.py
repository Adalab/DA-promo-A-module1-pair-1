## Pair Programming 6 - Pair 1 - Lara, Laura  - Loops 1 - Adivina número, más bajo, más alto ##


# JUEGO 1: VARIABLES ##


import math
import random
from re import I, L

# Variables numéricas
lim_superior = 100
lim_inferior = 1
intentos = 0 #contador del número de intento que es
intentos_permitidos = round(math.log(lim_superior - lim_inferior + 1, 2))
print(intentos_permitidos)
numero_secreto = random.randint(lim_inferior, lim_superior)
intentos_restantes = int(intentos_permitidos) - int(intentos)

#Inicio del juego
print("___¡¡Comenzamos el juego!!___")


while intentos < intentos_permitidos:
      print('Tienes', intentos_restantes, 'intentos para adivinar un número que está entre',
      lim_inferior, 'y', lim_superior,) 
      print("Pon un número:")
      num = int(input())
      print("El número que has elegido es", num)   

      if num > numero_secreto:
            print("Lo siento, el número secreto es más bajo que este")
      if num < numero_secreto:
            print("Lo siento, el número secreto es más alto que este")
      if num == numero_secreto:
            print("-- ¡Enhorabuena! Has adivinado el número :) Felicidades!! --")
            break
      intentos = intentos +1
      intentos_restantes = int(intentos_permitidos) - int(intentos)
else:
      print("Esta vez no has adivinado el número. Te animamos a que lo intentes otra vez :)")


print("-- Terminamos el juego. Hasta pronto --")



