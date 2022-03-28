## Pair Programming 7 - Pair 1 - Lara, Laura  - Loops 2 - AHORCADO ##

import random
from re import X

# Strings
palabras = ['Olivia','Tatiana', 'Almudena', 'Alicia', 'Guada', 'Lara', 'Lidia', 'Laura']

# Variables calculadas
palabra_secreta = palabras[random.randint(0, len(palabras)-1)].upper()
print(palabra_secreta)
intentos = len(palabra_secreta)
num_letras = len(palabra_secreta) 
contador = 1
letras_dichas = []

# Inicio del juego
print("-- ¡Comenzamos el juego! --")

for letra in palabra_secreta:
    print("Tienes", intentos,  "intentos para adivinar la palabra.")
    letra_propuesta = input().upper()                                       
    print("Intento: ", contador, "La letra elegida es: ", letra_propuesta)
   
    palabra_vacia = "_" * num_letras                                        
    pv = list(palabra_vacia)
    

    if letra_propuesta in palabra_secreta:
        print("La letra que has dicho SÍ está en la palabra. \n")
        x = (list(palabra_secreta).index(letra_propuesta))
        pv[x] = letra_propuesta
        
    
    else:
        print("La letra que has dicho NO está en la palabra. \n")
        letras_dichas.append(letra_propuesta)
        print("Te hacemos una lista con las letras que ya has dicho y no están: ", letras_dichas)

    #A partir de aquí creatividad! Estamos intentando que funcione todavía
    palab_relleno = pv.join(letra_propuesta)    #estamos intentando unir las letras propuestas para ir 'rellenando' la palabra a adivinar. 
                                                #La lista pv se convierta en un texto para que salga el output sin las ' '
    print("Así está la palabra a adivinar: ", palab_relleno)
    
         
    contador = contador + 1
    intentos = intentos - 1

#Despedida
if palabra_vacia == palabra_secreta:
    print("¡Enhorabuena")
else:
    print("¿La revancha?")

print("Terminamos el juego")

