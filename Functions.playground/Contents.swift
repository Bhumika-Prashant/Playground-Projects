import UIKit


func greeting1() {      // Function
    print("Hello!")
}
greeting1()



func greeting2(name: String) {  // Function with inputs
    print("Hello \(name)")
}
greeting2(name: "Bhumika")



func greeting3(name: String) -> Bool {  // Function with inputs and outputs
    if name == "Bhumika" || name == "Prashant" {
        return true
    } else {
        return false
    }
}
var doorShouldOpen = greeting3(name: "Bhumika")
print(doorShouldOpen)
