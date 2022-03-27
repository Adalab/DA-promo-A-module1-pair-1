## Pair Programming 5 - Pair 1 - Lara, Laura  - Tuplas y sets - Tres en raya ##



# Inicio del juego
print("-- ¡Comenzamos el juego! --")
print("\n")
str_bienvenida = "Este es el juego de las tres en raya!. Aquí tenemos el tablero. Escribe un caracter (o, x) y luego las coordenadas"


# Definir el tablero con todo "-"
board = [["-","-","-"],["-","-","-"],["-","-","-"]]

# Imprimir tablero
print(board[0][0] + " | " + board[0][1] + " | " + board[0][2])
print(board[1][0] + " | " + board[1][1] + " | " + board[1][2])
print(board[2][0] + " | " + board[2][1] + " | " + board[2][2])
print("\n")

print(str_bienvenida)

# Input de la usuaria (primera jugadora)
print("Eres la primera jugadora, bienvenida!")
print("Dime un caracter seguido de un espacio y dos numeros entre el 1 y el 3 separados por una coma ej. (n,m):")
input_usuaria = input()
print("\n")
print("La usuaria dio el input: ", input_usuaria)
input_usuaria_tupla = tuple(input_usuaria)
type(input_usuaria_tupla)
letra, espacio, *coor = input_usuaria_tupla

#primera jugadora
x = int(coor[0]) - 1 #coordenada 1 - conviertiendo los inputs en índices
y = int(coor[2]) - 1 #coordenada 2
print("Primera jugadora: estás jugando con la letra: ", letra)
print("Esta son las cooordenadas que has elegido: (", x ,"," , y ,")")
print("\n")

#dibujando el board para la primera jugadora
board[x][y] = letra


print(board[0][0] + " | " + board[0][1] + " | " + board[0][2])
print(board[1][0] + " | " + board[1][1] + " | " + board[1][2])
print(board[2][0] + " | " + board[2][1] + " | " + board[2][2])
print("\n")


# coor = tuple(int(num)-1 for num in coor.split(",")) #hemos separado las coordenadas de otra forma

#Input de la usuaria (segunda jugadora)
print("Eres la segunda jugadora, bienvenida!")
print("Dime un caracter seguido de un espacio y dos numeros entre el 1 y el 3 separados por una coma ej. (n,m):")
input_usuaria2 = input()
print("\n")
print("La usuaria dio el input: ", input_usuaria2)
input_usuaria_tupla2 = tuple(input_usuaria2)
type(input_usuaria_tupla2)
letra2, espacio2, *coor2 = input_usuaria_tupla2

#segunda jugadora
x2 = int(coor2[0]) - 1 #coordenada 1 - conviertiendo los inputs en índices
y2 = int(coor2[2]) - 1 #coordenada 2

print("Segunda jugadora: estás jugando con la letra: ", letra2)
print("Esta son las cooordenadas que has elegido: (", x2 ,"," , y2,")")
print("\n")

#dibujando el board para la segunda jugadora
board[x2][y2] = letra2


print(board[0][0] + " | " + board[0][1] + " | " + board[0][2])
print(board[1][0] + " | " + board[1][1] + " | " + board[1][2])
print(board[2][0] + " | " + board[2][1] + " | " + board[2][2])
print("\n")

# A tener en cuenta
# Convertir los caracteres del board a una sola lista
# board_list = sum(board,[])
# print(board_list.pop(x))

# Final del juego
print("-- ¡Terminamos el juego! --")
print("Los 2 jugadores que han participado son ", letra, letra2 )