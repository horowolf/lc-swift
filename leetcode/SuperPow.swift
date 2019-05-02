//
//  SuperPow.swift
//  leetcode
//
//  Created by horo on 5/2/19.
//  Copyright © 2019 horo. All rights reserved.
//

import Foundation

class SuperPow {
    func superPow(_ a: Int, _ b: [Int]) -> Int {
        if b.count < 1 {
            return 1
        }
        var mod = 1
        var base = a % 1337
        for i in (0...b.count - 1).reversed() {
            mod = mod * innerPow(base, b[i]) % 1337
            base = innerPow(base, 10)
        }
        return mod
    }
    
    func innerPow(_ a: Int, _ b: Int) -> Int {
        var r = 1
        for _ in 0..<b {
            r = r * a % 1337
        }
        return r
    }
}
