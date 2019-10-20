//
//  Palindrome Number.swift
//  leetcode
//
//  Created by horo on 10/19/19.
//  Copyright © 2019 horo. All rights reserved.
//
//  9

import Foundation

class Palindrome_Number {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var buf = x
        var result = 0
        
        while buf > 0 {
            result = result * 10 + buf % 10
            buf /= 10
        }
        
        if x == result {
            return true
        } else {
            return false
        }
    }
}
