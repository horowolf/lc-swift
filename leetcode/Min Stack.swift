//
//  Min Stack.swift
//  leetcode
//
//  Created by horo on 11/1/19.
//  Copyright © 2019 horo. All rights reserved.
//
// 155

import Foundation

class MinStack {

    /** initialize your data structure here. */
    var topNode: node?
    
    init() {
        
    }
    
    func push(_ x: Int) {
        if topNode == nil {
            topNode = node(value: x, minimum: x)
        } else {
            var min = x
            if x > topNode!.min {
                min = topNode!.min
            }
            let newNode = node(value: x, minimum: min)
            newNode.next = topNode
            topNode = newNode
        }
    }
    
    func pop() {
        if let t = topNode {
            topNode = t.next
        }
    }
    
    func top() -> Int {
        if let t = topNode {
            return t.val
        } else {
            return 0
        }
    }
    
    func getMin() -> Int {
        if let t = topNode {
            return t.min
        } else {
            return 0
        }
    }
    
    class node {
        var val: Int
        var next: node?
        var min: Int
        init(value: Int, minimum: Int) {
            val = value
            min = minimum
        }
    }
}
