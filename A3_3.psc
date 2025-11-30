Algoritmo A3_3
	
	MostrarMenu
	Leer opcion
	
	Segun opcion Hacer
		1:
			JugarAdivina
		2:
			Triangulo
		3:
			CalcularMedia
		De Otro Modo:
			Escribir "Numero incorrecto"
	FinSegun
	
	//^ Aqui se construyó todo el menú con las funciones ^
	
		
FinAlgoritmo

SubProceso MostrarMenu
    Escribir "1: Jugar Adivina Número"
    Escribir "2: Comprobar Triángulo"
    Escribir "3: Calcular Media"
	
FinSubProceso

SubProceso JugarAdivina
	Escribir "Ya he pensado un numero, intenta adivinarlo"
	Leer gues
	num <- Aleatorio(0,10)
	
	Mientras gues <> num Hacer
		si gues > num Entonces
			Escribir "Te has pasado, prueba otra vez."
			Leer gues
		SiNo
			Escribir "Te has quedado corto, prueba otra vez."
				Leer gues
		FinSi
	FinMientras
	
	Escribir gues, " Es justo el numero que estaba pensando, enhorabuena."
FinSubProceso

SubProceso Triangulo
	//Paso 1, pedir los 3 lados
	Escribir "ingrese el lado 1: "
	Leer l1
	Escribir "ingrese el lado 2: "
	Leer l2
	Escribir "ingrese el lado 3: "
	Leer l3
	
	//Paso 2: Comprobar si se puede hacer un triangulo.
	Si EsTriangulo(l1,l2,l3) Entonces
		Escribir "Se puede formar un Triangulo"
		//encontrar hipotenusa y catetor.
		Si l1 >= l2 y l1 >= l3 Entonces
			hip<-l1
			cat1<-l2
			cat2<-l3
		SiNo
			Si l2 >= l1 y l1 >= l3 Entonces
				hip<-l2
				cat1<-l1
				cat2<-l3
			SiNo
				hip <-l3
				cat1<- l1
				cat2<- l2
			FinSi
		FinSi
		//Paso4: Comprobar si es rectangulo y calcular area.
		Si hip^2 = cat1^2 + cat2^2
			Escribir "es un triangulo rectangulo"
			area <- (cat1 * cat2)/2
			Escribir "el area es: ", area
		SiNo
			Escribir "no es un triangulo rectangulo"
		FinSi
	SiNo
		Escribir "no se puede formar un Triangulo"
	FinSi
	
FinSubProceso

Funcion valido = EsTriangulo(a,b,c)
	//Mete en la variable "valido" la operacion de suma de todos los lados y comparacion con el tercero de cada opeacion
	valido = (a + b > c) y (a + c > b) y (b + c > a) 
FinFuncion

SubProceso CalcularMedia
	//definimos las varibles
    Definir i Como Entero
    Definir suma, media, num Como Real
    Definir linea Como Cadena
	
	//damos valor inicial
    i <- 0
    suma <- 0
	//Pedimos un array de numeros al usuario
    Escribir "Introduce un número (pulsa ENTER en blanco para terminar):"
    Leer linea
	//mientras el valor que el usuario introduce sea distinto a " " (vacio)
    Mientras linea <> "" Hacer
		//convierto lo introducido a numeros
        num <- ConvertirANumero(linea) 
		//i++
        i <- i + 1
		//Sumamos el valor actual al valor que ya habia (empieza en 0)
        suma <- suma + num
		
        Leer linea
    FinMientras
	
    Si i = 0 Entonces
        Escribir "No has introducido números."
    SiNo
		//aqui dividimos el resultado de la suma entre la cantidad de valores introducidos
        media <- suma / i
        Escribir "Has introducido ", i, " números. La media es: ", media
    FinSi
FinSubProceso

