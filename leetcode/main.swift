//
//  main.swift
//  leetcode
//
//  Created by horo on 3/6/19.
//  Copyright © 2019 horo. All rights reserved.
//

import Foundation

//let j = Jump_Game_II()

//print(j.jump([2,3,1]))

let obj = MyLinkedList()
obj.addAtHead(1)
obj.addAtTail(3)
obj.addAtIndex(1, 2)
var g = obj.get(1)
print(g)
obj.deleteAtIndex(1)
g = obj.get(1)
print(g)
