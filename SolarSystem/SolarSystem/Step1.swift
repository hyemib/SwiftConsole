//
//  Step1.swift
//  SolarSystem
//
//  Created by hyemi on 2022/12/09.
//

import Foundation

func isValidInputNum(_ num: Int) -> Bool {
    guard num >= 1 && num <= 80 else {
        print("1이상 80이하의 정수를 입력해주세요")
        return false
    }
    return true
}

func makeCircle(_ num: Int) -> String {
    var circle = [String]()
    for i in 0..<num/2 {
        var str = ""
        if num % 2 == 1 {
            str += "-"
            continue
        }
        for _ in 0..<num/2-(i+1) {
            str += " "
        }
        str += "-"
        for _ in 0..<i+num%2  {
            str += "  "
        }
        str += "-"
        circle.append(str)
        
    }
    return circle.joined(separator: "\n")+"\n"+String(circle.map{$0.reversed()}.joined(separator: "\n").reversed())
}

//let inputNum = Int(readLine()!)!
//if isValidInputNum(inputNum) {
//    print("원의 크기는?")
//    print(inputNum)
//    print(makeCircle(inputNum))
//}
