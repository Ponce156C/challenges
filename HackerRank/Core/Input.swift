//
//  Input.swift
//  HackerRank
//
//  Created by Carlos Ponce on 02/07/26.
//

struct Input: InputProtocol {
    var texts: [Any]
    
    init(texts: [Any] = []) {
        self.texts = texts
    }
    
    func convertToInt() -> [Int]? {
        let nums = self.texts.compactMap({ ($0 as? String).flatMap(Int.init) })
        guard nums.count == self.texts.count else {
            return nil
        }
        return nums
    }
}
