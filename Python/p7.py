# PAIR PROGRAMMING - LOOPS - LARA Y LAURA


# JUEGO 1: VARIABLES ##


import math
import random
from re import I, L

# Variables numéricas
lim_superior = 100
lim_inferior = 1
intentos = 0 #contador del número de intento que es
#num = input() #quitar input
intentos_permitidos = round(math.log(lim_superior - lim_inferior + 1, 2))
print(intentos_permitidos)
numero_secreto = random.randint(lim_inferior, lim_superior)
intentos_restantes = int(intentos_permitidos) - int(intentos)
#Intento 1: 4
#Inicio del juego

print("__¡¡Comenzamos el juego!!___")

#bucle

while intentos <= intentos_permitidos:
      print('Tienes', intentos_restantes, ' intentos para adivinar un número que está entre',
      lim_inferior, 'y', lim_superior, '.') 
      print("Pon un número:")
      num = int(input())
      print("El número que has elegido es", num)   
  
      if num > numero_secreto:
            print("Lo siento, el número secreto es más bajo que este")
      if num < numero_secreto:
            print("Lo siento, el número secreto es más alto que este")
      if num == numero_secreto:
            print("-- ¡Enhorabuena! Has adivinado el número. --")
            break
      intentos = intentos +1
      intentos_restantes = int(intentos_permitidos) - int(intentos)

#actualizar la vv. EL código no vuelve atrás, entonces hay que especificar la variable que cuenta otra vez.



print("-- Terminamos el juego. El número era ", numero_secreto,  ", ¿lo adivinaste? --")



# -- ¡Enhorabuena! Has adivinado el número. --

# -- ¡Comenzamos el juego! --
# Tienes 3 intentos para adivinar el número entre 2 y 9.
# Intento 1: 7
# Lo siento, el número secreto es más bajo que este.
# Intento 2: 4
# Lo siento, el número secreto es más alto que este.
# Intento 3: 6
# -- ¡Enhorabuena! Has adivinado el número. --