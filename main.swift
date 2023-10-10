//
//  main.swift
//  CALCULADORA
//
//  Created by CEDAM06 on 10/10/23.
//

import Foundation

var ciclo: String = ""
var numero1: Double = 0
var numero2: Double = 0
//Creando funciones:
func suma(n1: Double, n2: Double){
    let resultado = n1 + n2
    print("El resultado es: \(resultado)")
}
func multiplicación(n1: Double, n2: Double){
    let resultado = n1 * n2
    print("El resultado es: \(resultado)")
}
func resta(n1: Double, n2: Double){
    let resultado = n1 - n2
    print("El resultado es: \(resultado)")
}
func division(n1: Double, n2: Double){
    var resultado: Double = 0
    if n2 == 0 {
        print("La division no se puede realizar")
    } else {
        resultado = n1 / n2
        print("El resultado es: \(resultado)")
    }
    
    print("El resultado es: \(resultado)")
}

while ciclo != "Salir"{
    print("Dame el numero 1: ")
    numero1 = Double(readLine() ?? "0" ) ?? 0
    print("Dame el numero 2: ")
    numero2 = Double(readLine() ?? "0" ) ?? 0
    print("Que operacion quieres hacer?")
    print("SUMA")
    print("RESTA")
    print("MULTIPLICACION")
    print("DIVISION")
    ciclo = readLine() ?? "Nada"

    switch ciclo{
    case "Suma":
        suma(n1: numero1, n2: numero2)
    case "Resta":
        resta(n1: numero1, n2: numero2)
    case "Multiplicacion":
        multiplicación(n1: numero1, n2: numero2)
    case "Division":
        division(n1: numero1, n2: numero2)
    case "Salir":
        print("Vuelva pronto")
        break
    default:
        print("No puedo hacer esa operación")
        
    }
}
