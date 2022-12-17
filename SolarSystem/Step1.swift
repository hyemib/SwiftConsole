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

func makeCircle(_ num: Int, _ semicircle: [String]) -> String {
    var circle = semicircle
    if num % 2 == 1 {
        circle.removeLast()
    }
    return circle.joined(separator: "\n")+"\n"+String(semicircle.map{$0.reversed()}.joined(separator: "\n").reversed())
}


 func makeSemicircle(_ num: Int) -> String {
     var semiCircle = [String]()
     for i in 0..<num/2+num%2 {
         var str = ""
         for _ in 0..<(num%2==0 ? num/2-i-1 : num/2-i ) {
             str += " "
         }
         str += "-"
         for _ in 0..<i {
             str += "  "
         }
         str += "-"
         semiCircle.append(str)

     }
     return makeCircle(num, semiCircle)
 }

// let inputNum = Int(readLine()!)!
// if isValidInputNum(inputNum) {
//     print("원의 크기는?")
//     print(inputNum)
//     print(makeSemicircle(inputNum))
// }
