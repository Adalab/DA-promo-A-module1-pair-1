# Ejercicio Pair programming 6 - Lara, Laura #

# Variables predefinidas

# Definir el tablero con todo "-"

# Inicio del juego

# Imprimir tableroa
print("-- ¡Comenzamos el juego! --")
print("\n")
print(' - | - | - \n - | - | - \n - | - | - ')


# Input de la usuaria


print("Dime un caracter seguido de un espacio y dos numeros n,m:")
input_usuaria = input()
print("\n")
print("La usuaria dio el input: ", input_usuaria)

tuple(input_usuaria)
type(input_usuaria)
letra, *coor = input_usuaria



print(letra)
print(tuple(coor))

coor = tuple(int(num)-1 for num in coor.split(",")) 
print(type(coor))

#matriz= [n,m], [n,m], [n,m]

#zip(tup1,tup2,tup3) 
# (tup1
#  tup2
#  tup3)





# Actualizar tablero

# Imprimir tablero

# Input del usuario


#coor = tuple(int(co)-1 for co in coor.split(","))

# Actualizar tablero

# Imprimir tablero

# Convertir los caracteres del board a una sola lista
board_list = sum(board,[])

# Sacar los elementos únicos que no sean "-"

# Final del juego