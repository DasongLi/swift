//
//  test.swift
//  structure
//
//  Created by pro on 2017/7/29.
//  Copyright © 2017年 pro. All rights reserved.
//
var sss = stack<Int> ()
var que = queue<Int> ()
for i in 0 ..< 20 {
    sss.push(i)
    que.push(i)
}
while (!sss.empty()) {
    print(sss.top()!)
    sss.pop()
}
while (!que.empty()) {
    print(que.front()!)
    que.pop()
}
var pri = priority_queue()
pri.push(90)
pri.push(100)
pri.push(50)
pri.push(1000)
pri.push(19423)
pri.push(403204)
pri.push(23)
pri.push(20343)
while !pri.empty() {
    print(pri.pop()!)
}
