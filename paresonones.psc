Algoritmo paresonones
	
	Escribir "elige, ¿pares o nones?" //La ia toma la iniciativa.
	Leer equipo //Lee el equipo que el jugador elije.
	Escribir "Ahora elije un numero del 0 al 10"
	Leer x //Lee tu numero.
	num <- Aleatorio(0,10) //Genera su propio numero aleatorio entre 0 y 10.
	Escribir "Yo elijo ",num
	
	si (x+num) % 2 == 0 Entonces //Si la suma de los dos numeros entre 2 da 0 significa que el ganador es par.
		ganador <- x+num
		//Escribir x "+" num "=" x+num " Gana pares"
		equipoganador <- "Pares"
		
	SiNo //Si la suma de los dos numeros entre 2 no da 0 significa que el ganador es impar por lo que gana nones.
		ganador <- x+num
		equipoganador <- "Nones"
		//Escribir x "+" num "=" x+num " Gana nones".
	FinSi
	Escribir x "+" num "=" x+num " " //Escribe el resultado de la suma de ambos numeros.
	Escribir  "Ganador" + " " + equipoganador //escribe el equipo ganador, pares o nones.
FinAlgoritmo
