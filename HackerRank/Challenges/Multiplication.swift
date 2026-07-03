//
//  Multiplication.swift
//  HackerRank
//
//  Created by Carlos Ponce on 03/07/26.
//

class Multiplication: ChallengeProtocol {
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
    
    func operation(_ input: any InputProtocol) {
        guard let nums = input.convertToInt() else {
            error()
            return
        }
        
        let result = nums.reduce(1, *)
        printResult(data: result)
    }
    
    func printResult(data: Any) {
        print("✅ Resultado: \(data)")
    }
    
}
