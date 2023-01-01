
import Foundation

struct Circle {
    var num: Int
    
    func makeCircle(_ semiCircle: [String]) -> String {
        var circle = semiCircle
        if num % 2 == 1 {
            circle.removeLast()
        }
        return circle.joined(separator: "\n")+"\n"+String(semiCircle.map{$0.reversed()}.joined(separator: "\n").reversed())
    }

     func makeSemicircle() -> String {
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
         return makeCircle(semiCircle)
     }
}

//let inputNum = Int(readLine()!)!
//if inputNum < 1 && inputNum > 80  {
//    print("1이상 80이하의 정수를 입력해주세요")
//} else {
//    print("원의 크기는?")
//    print(inputNum)
//    let circle = Circle(num: inputNum)
//    print(circle.makeSemicircle())
//}
