//
//  Core.swift
//  HackerRank
//
//  Created by Carlos Ponce on 02/07/26.
//

import Foundation
import Challenges_Interfaces
import Math_Challenges

class Core: CoreProtocol {
    let error: String = "❗️ Opción no válida."
    
    private var continuar: Bool = true
    private var optionSelected: TestOption = .none
    
    init() {
        initMessage()
    }
    
    func run() {
        while self.continuar {
            mostrarMenu()
            guard let inputs = readLineOperations() else {
                print(error)
                return
            }
            let operation = operation(inputs)
            print(operation)
            optionSelected = .none
        }
    }
    
    func readLineOperations() -> InputProtocol? {
        while optionSelected == .none {
            guard let input = readLine(),
                    let option = TestOption(rawValue: input) else {
                print("No es una opcion valida, intenta de nuevo")
                continue
            }
            optionSelected = option
        }
        printLineBreak()
        
        guard let inputs = getInput() else { return nil }
        return inputs
    }
    
    func operation(_ input: InputProtocol) -> String {
        var challenge: (any ChallengeProtocol)? = nil
        switch optionSelected {
        case .Salir:
            close()
        case .Saludar:
            challenge = SayHi(input)
        case .SumarDosNumeros:
            challenge = AddNumbers()
        case .Multiplicacion:
            challenge = Multiplication()
        case .PlusMinus:
//                _ = PlusMinus()
            return "No esta disponible"
        case .PivotInteger:
            challenge = PivotInteger()
        case .PalindromoNumber:
            challenge = PalindromeNumber()
        case .none:
            return "none"
        }
        return challenge?.operation(input) ?? error
    }
    
    func getInput() -> InputProtocol? {
        let texts = optionSelected.textToPresent.components(separatedBy: ",")
        var inputs = InputParameters()
        texts.forEach { text in
            print(text, terminator: "")
            guard let input = readLine() else {
                print("❌ Entrada inválida.")
                return
            }
            inputs.texts.append(input)
        }
        return inputs
    }
    
    func mostrarMenu() {
        print("=============================================")
        print("============= 🛠 MENÚ PRINCIPAL =============")

        TestOption.allCases.forEach { option in
            print("\(option.rawValue). \(option.name)")
        }

        print("=============================================")
        print("Elige una opción:")
    }

    func printLineBreak() {
        print("\n")
    }
    
    func close() {
        print(TestOption.Salir.textToPresent)
        self.continuar = false
    }
}
