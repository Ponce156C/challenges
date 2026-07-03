//
//  Protocols.swift
//  HackerRank
//
//  Created by Carlos Ponce on 19/04/25.
//

import Foundation

protocol ChallengeProtocol: AnyObject {
    var error: () -> Void { get }
    func operation(_ input: InputProtocol)
    func printResult(data: Any)
}

extension ChallengeProtocol {
    func getInputs(inputs: InputProtocol) -> [String]? {
        return inputs.texts as? [String]
    }
    
    func initMessage() {
        print("init - \(String(describing: type(of: self)))")
        print("\n")
    }

    func deinitMessage() {
        print("deinit - \(String(describing: type(of: self)))")
        print("\n")
    }
}

protocol InputProtocol {
    var texts: [Any] { get set }
    func convertToInt() -> [Int]?
}
