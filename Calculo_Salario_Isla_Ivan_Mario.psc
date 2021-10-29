Funcion salario(salarioBrutof, tipoContrato, edad, paga)
	//definimos variables
	Definir tipoCotizacion, tipoIRPF, salarioNeto, Boni, paga1 Como Real
	Definir salarioBruto como Real
	tipoCotizacion <- 0.15
	//comprobamos numero de pagas si es 12 o 14
	Si paga = Verdadero Entonces
		paga1 <- 12
	SiNo
		paga1 <- 14
	Fin Si
	//calculamos salarioBruto mensual
	salarioBruto <- salarioBrutof /paga1
	
	//cambio de tipo de cotizacion en el caso que supere los 1000
	Si salarioBruto > 1000 Entonces
		tipoCotizacion <- 0.20
	FinSi
	//segun el tipo de contrato aplicamos un tipo de IRPF
	Segun tipoContrato Hacer
		Caso 'I': tipoIRPF <- 0.12
		Caso 'P': tipoIRPF <- 0.08
		Caso 'T': tipoIRPF <- 0.08	
	FinSegun
	
	salarioNeto <- salarioBruto -(salarioBruto*tipoCotizacion)-(salarioBruto*tipoIRPF)
	//aplicamos diferente bonificacion dependiendo de la edad 
	Si edad < 18 Entonces
		Boni<-50
	SiNo
		Si (edad<=65) y (edad >=18) Entonces
			Boni<-75
		SiNo
			Si edad>65 Entonces
				Boni<-(-100)
			FinSi
		Fin Si
	Fin Si
	//añadimos la bonificacion al neto anual y calculamos el neto mensual
	salarioNeto<- ((salarioNeto * paga1) + boni) / paga1
	//escribimos todos los datos en consola
	Escribir "Salario bruto: ", salarioBruto
	Escribir "tipo de cotización ", tipoCotizacion 
	Escribir "tipo de IRPF ", tipoIRPF
	Escribir "tipo de bonificacion ", boni
	Escribir "Líquido a percibir mensual ", salarioNeto
FinFuncion

//---------------------------------------------------------------//

Algoritmo Calculo_Salario
	//definimos las variables
	Definir salarioBrutof, edad Como Real
	Definir tipoContrato, tipoContratof Como Caracter
	Definir paga Como Logico
	//entrada de datos
	salario(40000,'I',48,Verdadero)
	
FinAlgoritmo