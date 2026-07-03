//
//  Enums.swift
//  HackerRank
//
//  Created by Carlos Ponce on 02/07/26.
//

enum TestOption: String, CaseIterable {
    case none = "00"
    case Salir = "0"
    case Saludar = "1"
    case SumarDosNumeros = "2"
    case Multiplicacion = "3"
    case PlusMinus = "4"
    case PivotInteger = "5"
    case PalindromoNumber = "6"
    
    var name: String {
        switch self {
        case .Salir: return "Salir"
        case .Saludar: return "Saludar"
        case .SumarDosNumeros: return "Sumar dos números"
        case .Multiplicacion: return "Multiplicacion"
        case .PlusMinus: return "Plus Minus"
        case .PivotInteger: return "Pivot Integer"
        case .PalindromoNumber: return "Palindromo Number"
        case .none: return ""
        }
    }
    
    var textToPresent: String {
        switch self {
        case .Salir:
            return "👋 Saliendo... ¡Hasta luego!"
        case .Saludar:
            return "Ingresa tu nombre: "
        case .SumarDosNumeros:
            return "Ingresa el primer número: ,Ingresa el segundo número: "
        case .Multiplicacion:
            return "Ingresa el primer numero: ,Ingresa el segundo número: "
        case .PlusMinus:
            return ""
        case .PivotInteger:
            return "Ingresa el valor de n: "
        case .PalindromoNumber:
            return "Ingresa el valor de n: "
        case .none:
            return ""
        }
    }
}
