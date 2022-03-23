# Pair_programming_python_4

import random

words = {'Colors': 'red orange yellow green blue indigo violet white black brown'.split(),
         'Shapes': 'square triangle rectangle circle ellipse rhombus trapezoid chevron pentagon hexagon septagon octagon'.split(),
         'Fruits': 'apple orange lemon lime pear watermelon grape grapefruit cherry banana cantaloupe mango strawberry tomato'.split(),
         'Animals': 'bat bear beaver cat cougar crab deer dog donkey duck eagle fish frog goat leech lion lizard monkey moose mouse otter owl panda python rabbit rat shark sheep skunk squid tiger turkey turtle weasel whale wolf wombat zebra'.split()}

# Comienzo

print("-- ¡Comenzamos el juego! --")
indice_dict_keys = {'1': 'Colors',
                    '2': 'Shapes', '3': 'Fruits', '4': 'Animals'}

print("Elige una de las siguientes categorias, usando su número.")
print(indice_dict_keys)

numero_elegido_usuaria = input()
print("Esta es la categoria que has elegido: ",
      indice_dict_keys[numero_elegido_usuaria])

print("Escribe una palabra de categoria", str(
    indice_dict_keys[numero_elegido_usuaria]), "para ver si es la palabra secreta:")
palabra_adivinar = input()
print("Eligiste la palabra: ", palabra_adivinar)

# tenemos que entrar al diccionario word con la clave seleccionada por la usuaria
categoria_primer_diccionario = indice_dict_keys[numero_elegido_usuaria]

word_list = words[categoria_primer_diccionario]
word_secreta = random.randint(0, len(word_list)-1)
print("¿La palabra que has elegido,", palabra_adivinar,
      ", es igual a la palabra secreta?")
print(palabra_adivinar == word_secreta)
print("La palabra secreta era", word_list[word_secreta])
