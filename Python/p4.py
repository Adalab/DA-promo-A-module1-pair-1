# ejercicios-resueltos-clase-invertida-DA-promoA
#Este repositorio contendrá los ejercicios resueltos de la clase invertida solicitados por las alumnas o resueltos durante la duración de las clases
# Pair_programming_python_4

import random

words = {'Colors':'red orange yellow green blue indigo violet white black brown'.split(),
'Shapes':'square triangle rectangle circle ellipse rhombus trapezoid chevron pentagon hexagon septagon octagon'.split(),
'Fruits':'apple orange lemon lime pear watermelon grape grapefruit cherry banana cantaloupe mango strawberry tomato'.split(),
'Animals':'bat bear beaver cat cougar crab deer dog donkey duck eagle fish frog goat leech lion lizard monkey moose mouse otter owl panda python rabbit rat shark sheep skunk squid tiger turkey turtle weasel whale wolf wombat zebra'.split()}

print(words)

#Comienzo

print("-- ¡Comenzamos el juego! --")
indice_dict_keys = {'1':'Colors', '2':'Shapes', '3':'Fruits', '4':'Animals'}

print("Elige una de las siguientes categorias, usando su número.")
print(indice_dict_keys)

numero_elegida_usuaria = input()
print("Esta es la categoria que has elegido: ", indice_dict_keys[numero_elegida_usuaria])

print("Adivina una palabra de la categoria")
palabra_adivinar = input()
print("Eligiste la palabra: ", palabra_adivinar)

#tenemos que entrar al diccionario word con la clave seleccionada por la usuaria
categoria_primer_diccionario = indice_dict_keys[numero_elegida_usuaria]
lista_values
word_list = words.values()

print(word_list)
#word_list = [categoria_primer_diccionario.values()]

#word_secreta = random.randint(0, len(word_list)-1)
#indice_dict_keys == word_secreta