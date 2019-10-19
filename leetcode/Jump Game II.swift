//
//  Jump Game II.swift
//  leetcode
//
//  Created by horo on 8/17/19.
//  Copyright © 2019 horo. All rights reserved.
//
//  45


import Foundation
class Jump_Game_II {
    func jump(_ nums: [Int]) -> Int {
        if nums.count <= 1 {
            return 0
        }
        let last = nums.count - 1
        var count = 0
        var head = 0
        var tail = 0
        while head <= tail {
            var new = 0
            for i in head...tail {
                if new < i + nums[i] {
                    new = i + nums[i]
                }
            }
            count += 1
            if new >= last {
                break
            }
            head = tail + 1
            tail = new
        }
        
        return count
    }
}
