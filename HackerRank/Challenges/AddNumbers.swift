//
//  AddTwoNumbers.swift
//  HackerRank
//
//  Created by Carlos Ponce on 02/07/26.
//
import Foundation

class AddNumbers: ChallengeProtocol {
    
    let error: () -> Void = {
        print("Alguno de los datos viene en el formato erroneo, trata de nuevo")
    }
    
    init(_ input: InputProtocol) {
        initMessage()
        operation(input)
    }
    
    deinit {
        deinitMessage()
    }
    
    func operation(_ input: InputProtocol) {
        guard let nums = input.convertToInt() else {
            error()
            return
        }

        let result = nums.reduce(0, +)
        printResult(data: result)
    }
    
    func printResult(data: Any) {
        print("✅ Resultado: \(data)")
    }
}
