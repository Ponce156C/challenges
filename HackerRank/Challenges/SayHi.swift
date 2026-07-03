//
//  SayHi.swift
//  HackerRank
//
//  Created by Carlos Ponce on 02/07/26.
//

class SayHi: ChallengeProtocol {
    
    let error: () -> Void = {
        print("Algo salio mal")
    }
    
    init(_ input: InputProtocol) {
        initMessage()
        operation(input)
    }
    
    deinit {
        deinitMessage()
    }
    
    func operation(_ input: any InputProtocol) {
        guard let texts = self.getInputs(inputs: input),
        let name = texts.first else {
            error()
            return
        }
        printResult(data: name)
    }
    
    func printResult(data: Any) {
        print("😃👋👋👋👋👋 Hola, \(data)")
    }
}
