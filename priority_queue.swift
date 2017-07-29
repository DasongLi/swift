//
//  priority_queue.swift
//  structure
//
//  Created by pro on 2017/7/29.
//  Copyright © 2017年 pro. All rights reserved.
//

import Foundation
// just for type Int.
class priority_queue {
    var array = [Int] ()
    init() {
        array.append(-1)
    }
    func push(_ element: Int) {
        var hole = array.count
        array.append(0)
        while hole > 1 && element < array[hole/2] {
            array[hole] = array[hole/2]
            hole = hole / 2
        }
        array[hole] = element
    }
    func pop() -> Int? {
        guard array.count != 0 else {
            return nil
        }
        let min = array[1];
        array[1] = array[array.count-1]
        array.remove(at: array.count-1)
        if array.count <= 1 {
            return min
        }
        var x = 1
        percolateDown(&x);
        return min
    }
    func percolateDown(_ index: inout Int) {
        var child: Int
        let tmp = array[index]
        while index * 2 < array.count  {
            child = index * 2
            if child+1 < array.count && array[child+1] < array[child] {
                child = child + 1
            }
            if array[child] < tmp {
                array[index] = array[child]
            } else {
                break
            }
            index = child
        }
        array[index] = tmp
    }
    func empty() -> Bool {
        return array.count <= 1
    }
}









