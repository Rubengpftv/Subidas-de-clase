Algoritmo AreaCoronaCircular
    Definir radioMayor, radioMenor, Area Como Real //Se solicitan dos valores
	
    Escribir "Ingrese el radio mayor:"
    Leer radioMayor
    Escribir "Ingrese el radio menor:"
    Leer radioMenor
	
    Si radioMayor <= radioMenor Entonces //Se asegura de que el resultado no será negativo
        Escribir "Error: el radio mayor debe ser mayor que el menor"
    SiNo
        Area = 3.1416 * (radioMayor^2 - radioMenor^2)
        Escribir "El área de la corona circular es: ", Area
    FinSi
FinAlgoritmo
