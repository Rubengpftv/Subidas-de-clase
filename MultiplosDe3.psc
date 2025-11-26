Algoritmo MultiplosDe3
    Definir n, i Como Entero //pedimos dos numeros enteros
	
    Escribir "Ingrese un número entre 5 y 10:"
    Leer n
	
    Si n < 5 o n > 10 Entonces //definimos que solo se acepten numeros del 5 al 10
        Escribir "Número fuera de rango"
    SiNo
        Para i = n Hasta 50
            Si i % 3 = 0 Entonces //Se calcula el multiplo de 3 hasta 50 con la operacion de modulo
                Escribir i
            FinSi
        FinPara
    FinSi
FinAlgoritmo
