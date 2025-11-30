//Funcion <- aqui se iniciaba como una Funcion cuando esto tiene estructura de subproceso, ya que no retorna ningun valor.
SubProceso  LlamarAMiFuncion(N, MiArray)
	
	Escribir "Array modificado en el programa principal:"
	Para i <- 1 Hasta N
		Escribir MiArray[i]
	FinPara
	//FinFuncion <- igual que en la linea de arriba se cerraba una funcion cuando debia ser un SubProceso 
FinSubProceso


Algoritmo array
	Dimension MiArray[10]
	
	Escribir "Ingrese el tamaño del array <10: "
	Leer N
	
	//Para i <- 1 Hasta N
		//Dimension Array[10]
		//Array[i] <- i * 2
	//FinPara
	// Arriba dejo el para mal formulado, donde se puede ver que los arrays se llaman directamente "array[10] cuando se esta trabajando desde arriba con "MiArray"
	//Tambien sobra el "Dimension Array[10] dentro del bucle, se deja arriba donde empieza el Algoritmo.
	Para i <- 1 Hasta N
		MiArray[i] <- i * 2
	FinPara
	LlamarAMiFuncion( N, MiArray)
FinAlgoritmo

