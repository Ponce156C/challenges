//
//  PivotInteger.swift
//  HackerRank
//
//  Created by Carlos Ponce on 03/07/26.
//

class PivotInteger: ChallengeProtocol {
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
        nums.forEach { n in
            let total = n * (n + 1) / 2
            let root = Int(Double(total).squareRoot())
            let pivot = root * root == total ? root : -1
            printResult(data: pivot)
        }
    }
    
    func operationEfficent(input: InputProtocol) {
        guard let nums = input.convertToInt() else {
            error()
            return
        }
        nums.forEach { n in
            var descending: Int = 0
        
            for i in (1...n).reversed() {
                descending += i
                var ascending: Int = 0
                var x = 0
        
                for j in 1...i {
                    ascending += j
                    x = j
                }
                if ascending == descending {
                    printResult(data: x)
                }
            }
        
            printResult(data: -1)
        }
    }
    
    func printResult(data: Any) {
        print("El pivote es en: \(data)")
    }
}
