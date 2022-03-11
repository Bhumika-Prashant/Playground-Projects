import Foundation

struct MyStructure {
    let instanceProperty = "ABC"    // instanceProperty is associated with the instances that are created from the type (MyStructure)
    static let typeProperty = "123" // typeProperty is associated with the type(MyStructure) directly
    
    func instanceMethod() { // you need to create instance here
        print("This is instance method.")
    }
    static func typeMethod() {  // you need not to create instance(object) here
        print("This is type method.")
    }
}

let myStructure = MyStructure()
print(myStructure.instanceProperty)
myStructure.instanceMethod()

print(MyStructure.typeProperty)
MyStructure.typeMethod()

//  you can do same thing with classes as well
