## Pair Programming 7 - Pair 1 - Lara, Laura ##

import random
from re import X

# Ajustes

# Strings
palabras = ['Olivia','Tatiana', 'Almudena', 'Alicia', 'Guada', 'Lara', 'Lidia', 'Laura']

# Variables calculadas
palabra_secreta = palabras[random.randint(0, len(palabras)-1)].upper()
print(palabra_secreta)
intentos = len(palabra_secreta) + 2
num_letras= len(palabra_secreta)
contador = 0

# Inicio del juego
print("-- ¡Comenzamos el juego! --")
#print("Tienes", intentos,  "intentos para adivinar la palabra.")

for letra in palabra_secreta:
    

    print("Tienes", intentos,  "intentos para adivinar la palabra.")
    letra_propuesta = input()
    print("Intento: ", contador, "La letra elegida es: ", letra_propuesta)
   
    palabra_vacia = ""
    if letra_propuesta ==  palabra_secreta[contador]:
        palabra_vacia[contador] = letra_propuesta
        # if letra_propuesta == letra_pal_secreta:
        # print("_", letra_propuesta) #aquí ponemos el índice de donde se encuentra lal etra propuesta
    print(palabra_vacia)
    contador = contador + 1
    intentos = intentos - 1

# Adivinanzas
    # Input de la usuaria
       # Actualizar la palabra y los fallos
       # Comunicar el estado del juego a la usuaria
    # Parar el juego si la palabra ha sido adivinada
# Final del juego_l


##OUTPUT
# -- ¡Comenzamos el juego! --
# Tienes 8 intentos para adivinar la palabra.

# Intento 1: E
# ____  -  E

# Intento 2: A
# _A_A  -  E

# Intento 3: S
# _A_A  -  ES

# Intento 4: D
# DA_A  -  ES

# Intento 5: T
# DATA  -  ES

# -- ¡Terminamos el juego! --
# Enhorabuena, has adivinado la palabra.