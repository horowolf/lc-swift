//
//  linkedlist.swift
//  leetcode
//
//  Created by horo on 10/31/19.
//  Copyright © 2019 horo. All rights reserved.
//
//  707


import Foundation

class MyLinkedList {

    /** Initialize your data structure here. */
    
    class node {
        var val: Int
        var next: node?
        init(_ value: Int) {
        val = value
    }
    }
    
    var root: node?
    
    init() {
        
    }
    
    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
    func get(_ index: Int) -> Int {
        var pointer = root
        for _ in 0..<index {
            pointer = pointer?.next
        }
        if let pt = pointer {
            return pt.val
        } else {
            return -1
        }
    }
    
    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
    func addAtHead(_ val: Int) {
        let newNode = node(val)
        newNode.next = root
        root = newNode
    }
    
    /** Append a node of value val to the last element of the linked list. */
    func addAtTail(_ val: Int) {
        var pointer = root
        let newNode = node(val)
        if pointer == nil {
            root = newNode
        } else {
            while pointer?.next != nil {
                pointer = pointer?.next
            }
            pointer?.next = newNode
        }
    }
    
    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    func addAtIndex(_ index: Int, _ val: Int) {
        var pointer = root
        if index == 0 {
            addAtHead(val)
            return
        }
        for _ in 1..<index {
            pointer = pointer?.next
        }
        let newNode = node(val)
        newNode.next = pointer?.next
        pointer?.next = newNode
    }
    
    /** Delete the index-th node in the linked list, if the index is valid. */
    func deleteAtIndex(_ index: Int) {
        if index == 0 {
            root = root?.next
            return
        }
        var pointer = root
        for _ in 1..<index {
            pointer = pointer?.next
        }
        pointer?.next = pointer?.next?.next
    }
}
