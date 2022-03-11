import UIKit

//var myDouble = 3.14159
//
//let myRoundedDouble = String(format: "%.1f", myDouble)  // double converted to string(1 decimal)
//
//print(myRoundedDouble)  // 3.1
//
//myDouble.round()    // 3

// we get only 3 when we round -> but what if we want to print Double value (3.1) instead of String value (3.1)


//extension Double {
//
//    func round(to places: Int) -> Double {
//        let precisionNumber = pow(10, Double(places))
//        var n = self    // 3.14159
//        n = n * precisionNumber
//        n.round()
//        n = n / precisionNumber
//        return n
//    }
//
//}
//
//var myDouble = 3.14159
//myDouble.round(to: 1)
//
//let a = 234.234234
//a.round(to: 2)



//  UIViewController's code is not open source so we don't have access to change the code

extension UIButton {
    func makeCircular() {
        button.layer.cornerRadius = frame.size.width / 2
        button.clipsToBounds = true
    }
}

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .magenta

// instead of making every circular button -> use extension
button.makeCircular()
