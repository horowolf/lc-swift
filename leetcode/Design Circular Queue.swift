//
//  Design Circular Queue.swift
//  leetcode
//
//  Created by horo on 10/31/19.
//  Copyright © 2019 horo. All rights reserved.
//
//  622

import Foundation

class MyCircularQueue {
    
    var size: Int
    var queue: Array<Int>
    var head = 0
    var tail = -1
    var count = 0
    
    /** Initialize your data structure here. Set the size of the queue to be k. */
    init(_ k: Int) {
        size = k
        queue = Array<Int>(repeating: -1, count: k)
    }
    
    /** Insert an element into the circular queue. Return true if the operation is successful. */
    func enQueue(_ value: Int) -> Bool {
        if isFull() {
            return false
        } else {
            tail = (tail + 1) % size
            queue[tail] = value
            count += 1
            return true
        }
    }
    
    /** Delete an element from the circular queue. Return true if the operation is successful. */
    func deQueue() -> Bool {
        if isEmpty() {
            return false
        } else {
            queue[head] = -1
            head = (head + 1) % size
            count -= 1
            return true
        }
    }
    
    /** Get the front item from the queue. */
    func Front() -> Int {
        return queue[head]
    }
    
    /** Get the last item from the queue. */
    func Rear() -> Int {
        if tail >= 0 {
            return queue[tail]
        } else {
            return -1
        }
    }
    
    /** Checks whether the circular queue is empty or not. */
    func isEmpty() -> Bool {
        if count == 0 {
            return true
        } else {
            return false
        }
    }
    
    /** Checks whether the circular queue is full or not. */
    func isFull() -> Bool {
        if count == size {
            return true
        } else {
            return false
        }
    }
}
