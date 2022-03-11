import UIKit

//  Singleton - There is only one copy of it that can be shared across all of the classes and objects.

class Car {
    var color = "Red"
    
    static let singletonCar = Car()
}

let myCar = Car.singletonCar
myCar.color = "Blue"

let yourCar = Car.singletonCar
print(yourCar.color)

class A {
    init() {
        Car.singletonCar.color = "Brown"
    }
}
class B {
    init() {
        print(Car.singletonCar.color)
    }
}
