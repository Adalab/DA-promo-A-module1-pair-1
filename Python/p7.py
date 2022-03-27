## Pair Programming 7 - Pair 1 - Lara, Laura  - Loops 2 - AHORCADO ##

import random
from re import A, X

# Strings
palabras = ['Olivia', 'Tatiana', 'Almudena',
            'Alicia', 'Guada', 'Lara', 'Lidia', 'Laura']

# Variables calculadas
palabra_secreta = palabras[random.randint(0, len(palabras)-1)].upper()
intentos = len(palabra_secreta)
num_letras = len(palabra_secreta)
palabra_vacia = "_ " * num_letras
contador = 1

# Inicio del juego
print("-- ¡Comenzamos el juego! --")
print("Esta es tu palabra secreta tiene ", num_letras, "letras. Mira: \n")
print(palabra_vacia, "\n")

while intentos > 0:
    print("Tienes", intentos,
          "intentos para adivinar la palabra secreta. Dime una letra, y vemos si está:")
    letra_propuesta = input()
    print("Intento:", contador, "La letra elegida es:", letra_propuesta, ".")
    for letra in palabra_secreta:
        if letra_propuesta == letra:
            print("¡Correcto! La letra ", letra_propuesta,
                  "está en la palabra secreta. La colocamos:")
            x = palabra_secreta.index(letra_propuesta)
            palabra_vacia[x] = letra_propuesta

    print(palabra_vacia, "\n")
    contador = contador + 1
    intentos = intentos - 1

if palabra_vacia == palabra_secreta:
    print("¡Enhorabuena")
else:
    print("¿La revancha?")

print("Terminamos el juego")
# Adivinanzas
# Input de la usuaria
# Actualizar la palabra y los fallos
# Comunicar el estado del juego a la usuaria
# Parar el juego si la palabra ha sido adivinada
# Final del juego_l


# OUTPUT
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
