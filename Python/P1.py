## Pair Programming 1 - Pair 1 - Lara, Laura  - Variables - Adivinar número metiendo un número ##

import math
import random
from re import I, L


# Inicio del juego
print("\n")
print("___¡¡Comenzamos el juego!!___. Vamos a intentar adivinar el número!")
print("Primero tienes que introducir los números del rango entre los que vamos a jugar...")

#Input usuaria limites del juego
print("Aquí introduce el número más alto")
lim_superior =int(input())
print("Ahora escribe el número más bajo")
lim_inferior = int(input())

#variables numéricas
intentos_permitidos = round(math.log(lim_superior - lim_inferior + 1, 2))
numero_secreto = random.randint(lim_inferior, lim_superior)
intentos = 1
contador = 1      #contador lo dejamos definido pero no la usamos 
                  #porque solo hay 1 intento en este juego (contador = contador + 1)

#contador de intentos
print('Tienes', intentos, 'intento(s) para adivinar un número que está entre',
      lim_inferior, 'y', lim_superior)
print("Este es tu intento numero", contador)

# User input para adivinar número
print("Escribe el número aquí:") 
num= input()
print("El número que has elegido es", num)

# Fin del juego
print("El número secreto era", numero_secreto,  ", ¿lo adivinaste?")
print("-- Terminamos el juego. Hasta la próxima --")
