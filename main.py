import random

print("Bienvenido a MasterMind. El juego consiste en lo siguiente: ")
print("- Se generará una combinación de 4 números al azar entre el 0 y el 9 en las posiciones de 1 a 4.")
print("- El usuario debe intentar adivinar la combinación exacta de números en el menor número de intentos posibles.")
print("Buena suerte !")


#Generación aleatoria de los 4 números del bot. No variarán en todo el programa
def numsbot():
    nbot1 = str(random.randint(1, 9))
    nbot2 = str(random.randint(1, 9))
    nbot3 = str(random.randint(1, 9))
    nbot4 = str(random.randint(1, 9))
    numbersbot = [nbot1, nbot2, nbot3, nbot4]
    return numbersbot


#Función que sirve para contrastar los números introducidos por el usuario contra los números del bot generados aleatoriamente
def checknuser(dato1, dato2, iterador):

    if dato1 == dato2[iterador]:
        print("0")

    elif (dato1 == dato2[0]) or (dato1 == dato2[1]) or (dato1 == dato2[2]) or (dato1 == dato2[3]):
        print("X")

    else:
        print("-")


#Función cuya finalidad es recoger los números introducidos por el usuario y almacenarlos en las variables explicadas anteriormente
def number_request():
    nuser1 = str(input("Introduzca el número 1 --> "))
    nuser2 = str(input("Introduzca el número 2 --> "))
    nuser3 = str(input("Introduzca el número 3 --> "))
    nuser4 = str(input("Introduzca el número 4 --> "))
    numbersuser = [nuser1, nuser2, nuser3, nuser4]
    return numbersuser

#Parte principal del programa. Aquí es donde se cohexionan todas las funciones anteriores.
#Consta de un while que compara si los números introducidos por el usuario coinciden con los generados por el bot.
#En caso negativo, el usuario estará bloqueado hasta que acierte los 4 números.
def __main__():
    #Variable iuser (intentosuser) utilizada para contar las veces que se ha intentado acertar los números
    iuser = 0
    arraybot = numsbot()
    arrayuser = [0, 0, 0, 0]
    print("b= "+str(arraybot))

    while (arrayuser[0] != arraybot[0]) or (arrayuser[1] != arraybot[1]) or (arrayuser[2] != arraybot[2]) or (arrayuser[3] != arraybot[3]):

        arrayuser = number_request()
        print("u= "+str(arrayuser))

        checknuser(arrayuser[0], arraybot, 0)

        checknuser(arrayuser[1], arraybot, 1)

        checknuser(arrayuser[2], arraybot, 2)

        checknuser(arrayuser[3], arraybot, 3)

        print(" ")

        iuser = iuser + 1

    return iuser

intentos = str(__main__())
print("Has ganado en "+intentos+" intentos!")
