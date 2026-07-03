//
//  PalindromeNumber.swift
//  HackerRank
//
//  Created by Carlos Ponce on 03/07/26.
//

class PalindromeNumber: ChallengeProtocol {
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
        nums.forEach { num in
            let isPalindrome = isPalindrome(x: num)
            printResult(data: isPalindrome)
        }
    }
    func isPalindrome(x: Int) -> Bool {

        if x < 0 { return false }
        var r = 0
        var mX = x
        repeat {
            var n = mX % 10
            r = r * 10 + n
            mX = mX / 10
        } while mX > 0
        return r == x
    }
    
    func printResult(data: Any) {
        print("Es un palindromo: \(data)")
    }
    
    
}
