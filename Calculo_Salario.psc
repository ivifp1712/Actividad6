Funcion salario(salarioBrutof, tipoContrato, edad, paga)
	
	Definir tipoCotizacion, tipoIRPF, salarioNeto, Boni, paga1 Como Real
	Definir salarioBruto como Real
	tipoCotizacion <- 0.15
	
	Si paga = Verdadero Entonces
		paga1 <- 12
	SiNo
		paga1 <- 14
	Fin Si
	
	salarioBruto <- salarioBrutof /paga1
	
	Si salarioBruto > 1000 Entonces
		tipoCotizacion <- 0.20
	FinSi
	
	Segun tipoContrato Hacer
		Caso 'I': tipoIRPF <- 0.12
		Caso 'P': tipoIRPF <- 0.08
		Caso 'T': tipoIRPF <- 0.08	
	FinSegun
	
	salarioNeto <- salarioBruto -(salarioBruto*tipoCotizacion)-(salarioBruto*tipoIRPF)
	
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
	
	salarioNeto<- ((salarioNeto * paga1) + boni) / paga1
	
	Escribir "Salario bruto: ", salarioBruto
	Escribir "tipo de cotización ", tipoCotizacion 
	Escribir "tipo de IRPF ", tipoIRPF
	Escribir "tipo de bonificacion ", boni
	Escribir "Líquido a percibir mensual ", salarioNeto
FinFuncion

//---------------------------------------------------------------//

Algoritmo Calculo_Salario
	
	Definir salarioBrutof, edad Como Real
	Definir tipoContrato, tipoContratof Como Caracter
	Definir paga Como Logico
	salario(40000,'I',48,Verdadero)
	
FinAlgoritmo
