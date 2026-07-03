//
//  PlusMinus.swift
//  HackerRank
//
//  Created by Carlos Ponce on 18/04/25.
//

import Foundation
/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 * https://www.hackerrank.com/challenges/one-week-preparation-kit-plus-minus/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-week-preparation-kit&playlist_slugs%5B%5D=one-week-day-one
 */

class PlusMinus {
    
    private var n: Int = 0
    private var arr: [Int] = []
    
    init() {
        let inputData = getInputData()
        calcule(arr: arr)
    }
    
    func getInputData() {
        print("Ingresa el tamaño del array:")
        guard let nTemp = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
        else { fatalError("Bad input") }
        n = nTemp
        
        print("Ingresa el array de números separados por un espacio:")
        guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
        
        arr = processData(n: n, arrTemp: arrTemp)
        
    }
    
    func processData(n: Int, arrTemp: String) -> [Int] {
        let arr: [Int] = arrTemp.split(separator: " ").map {
            if let arrItem = Int($0) {
                return arrItem
            } else { fatalError("Bad input") }
        }

        guard arr.count == n else { fatalError("Bad input") }
        return arr
    }
    
    func calcule(arr: [Int]) -> Void {
        let n: Float = Float(arr.count)
        let positives = arr.filter { $0 > 0 }.count
        let negatives = arr.filter { $0 < 0 }.count
        let zeros     = arr.filter { $0 == 0 }.count
        
        print("positives: " + String(format: "%.6f", Float(positives) / n))
        print("negatives: " + String(format: "%.6f", Float(negatives) / n))
        print("zeros: " + String(format: "%.6f", Float(zeros) / n))
    }
}

import Foundation
/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 * https://www.hackerrank.com/challenges/one-week-preparation-kit-plus-minus/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-week-preparation-kit&playlist_slugs%5B%5D=one-week-day-one
 */

//class PlusMinus {
//    
//    var n: Int = 0
//    var arr: [Int]
//    
//    init() {
//        let inputData = getData()
//        arr = processData(arrTemp: inputData.array)
//        calcule(arr: arr)
//    }
//    
//    func getData() -> (arraySize: Int, array: String) {
//        print("Ingresa el tamaño del array:")
//        guard let nTemp = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//        else { fatalError("Bad input") }
//        n = nTemp
//
//        print("Ingresa el array de números separados por un espacio:")
//        guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
//        
//        return (arraySize: n, array: arrTemp)
//        
//    }
//    
//    func processData<T>(arrTemp: T) -> [Int] {
//        let arr: [Int] = arrTemp.split(separator: " ").map {
//            if let arrItem = Int($0) {
//                return arrItem
//            } else { fatalError("Bad input") }
//        }
//
//        guard arr.count == n else { fatalError("Bad input") }
//        return arr
//    }
//func processData(n: Int, arrTemp: String) -> [Int] {
//    let arr: [Int] = arrTemp.split(separator: " ").map {
//        if let arrItem = Int($0) {
//            return arrItem
//        } else { fatalError("Bad input") }
//    }
//
//    guard arr.count == n else { fatalError("Bad input") }
//    return arr
//}
//
//    func calcule(arr: [Int]) -> Void {
//        let n: Float = Float(arr.count)
//        let positives = arr.filter { $0 > 0 }.count
//        let negatives = arr.filter { $0 < 0 }.count
//        let zeros     = arr.filter { $0 == 0 }.count
//        
//        print("positives: " + String(format: "%.6f", Float(positives) / n))
//        print("negatives: " + String(format: "%.6f", Float(negatives) / n))
//        print("zeros: " + String(format: "%.6f", Float(zeros) / n))
//    }
//}

/*
 * input
 *  5
 *  0 0 -1 1 1
 * output
 *  0.400000
 *  0.200000
 *  0.400000
*/

/*
 * input
 *  7
 *  1 -2 -7 9 1 -8 -5
 * output
 *  0.428571
 *  0.571429
 *  0.000000
*/

/*
 * input
 *  43
 *  55 48 48 45 91 97 45 1 39 54 36 6 19 35 66 36 72 93 38 21 65 70 36 63 39 76 82 26 67 29 24 82 62 53 1 50 47 65 67 19 66 90 77
 * output
 *  1.000000
 *  0.000000
 *  0.000000
*/

/*
 * input
 *  5
 *  0 0 -1 1 1
 * output
 *  0.400000
 *  0.200000
 *  0.400000
*/

/*
 * input
 *  7
 *  1 -2 -7 9 1 -8 -5
 * output
 *  0.428571
 *  0.571429
 *  0.000000
*/

/*
 * input
 *  43
 *  55 48 48 45 91 97 45 1 39 54 36 6 19 35 66 36 72 93 38 21 65 70 36 63 39 76 82 26 67 29 24 82 62 53 1 50 47 65 67 19 66 90 77
 * output
 *  1.000000
 *  0.000000
 *  0.000000
*/

//
//  PlusMinus.swift
//  HackerRank
//
//  Created by Carlos Ponce on 18/04/25.
//
