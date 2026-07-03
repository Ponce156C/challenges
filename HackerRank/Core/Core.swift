//
//  Core.swift
//  HackerRank
//
//  Created by Carlos Ponce on 02/07/26.
//

import Foundation

class Core: ChallengeProtocol {
    
    let error: () -> Void = {
        print("❗️ Opción no válida.")
    }
    
    private var continuar: Bool = true
    private var optionSelected: TestOption = .none
    
    init() {
        initMessage()
        while self.continuar {
            mostrarMenu()
            guard let inputs = readLineOperations() else {
                error()
                return
            }
            operation(inputs)
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
    
    func operation(_ input: any InputProtocol) {
        switch optionSelected {
        case .Salir:
            close()
        case .Saludar:
            _ = SayHi(input)
        case .SumarDosNumeros:
            _ = AddNumbers(input)
        case .Multiplicacion:
            _ = Multiplication(input)
        case .PlusMinus:
//                _ = PlusMinus()
            print("No esta disponible")
        case .PivotInteger:
            _ = PivotInteger(input)
        case .PalindromoNumber:
            _ = PalindromeNumber(input)
        case .none:
            print("none")
        }
        optionSelected = .none
    }
    
    func printResult(data: Any) {
        // no code
    }
    
    func getInput() -> InputProtocol? {
        let texts = optionSelected.textToPresent.components(separatedBy: ",")
        var inputs = Input()
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
