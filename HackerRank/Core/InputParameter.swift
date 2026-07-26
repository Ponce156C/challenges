//
//  InputParameter.swift
//  HackerRank
//
//  Created by Carlos Ponce on 08/07/26.
//

import Challenges_Interfaces

struct InputParameters: InputProtocol {
    var texts: [Any]
    
    init(texts: [Any] = []) {
        self.texts = texts
    }
}
