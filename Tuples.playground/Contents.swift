import Foundation

let tuple1 = ("Bhumika", 35)
print(tuple1.0)

let tuple2 = (name: "Bhumika", age: 35)
print(tuple2.name)

let tuple3: (name: String, age: Int)
//tuple3.name = "Bhumika"
//tuple3.age = 35
tuple3 = (name: "Bhumika", age: 35)
print("\(tuple3.name) is \(tuple3.age) years old.")
