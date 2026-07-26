//
//  SayHi.swift
//  HackerRank
//
//  Created by Carlos Ponce on 02/07/26.
//

import Challenges_Interfaces

class SayHi: ChallengeProtocol {
    typealias info = String
    
    let error: String = "Algo salio mal"
    
    init(_ input: InputProtocol) { initMessage() }
    
    deinit { deinitMessage() }
    
    func operation(_ input: any Challenges_Interfaces.InputProtocol) -> String {
        switch compute(input) {
        case .success(let name):    getResult(data: name)
        case .failure:              error
        }
    }
    
    func compute(_ input: InputProtocol) -> Result<info, ComputeError> {
        guard let texts = self.getInputs(inputs: input),
        let name = texts.first else {
            return .failure(.invalidInput)
        }
        return .success(name)
    }
    
    func getResult(data: info) -> String {
        return "😃👋👋👋👋👋 Hola, \(data)"
    }
}
