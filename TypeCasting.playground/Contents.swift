import UIKit

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water.")
    }
}

let bhumika = Human(n: "Bhumika")
let prashant = Human(n: "Prashant")
let nemo = Fish(n: "Nemo")

let neighbours = [bhumika, prashant, nemo]  // neighbours is a common type -> Animal
let neighbour1 = neighbours[0]  // neighbour1 is -> Animal

// so what if we want neighbour1 -> Human type

//if neighbours[0] is Human {
//    print("First neighbour is Human")
//}
//if bhumika is Human {
//    print("First neighbour is Human")
//}

//              is -> is used for type checking
//let cell = UITableViewCell()
//if cell is UITableViewCell {
//    print("The type match!")
//}

//              as! -> Forced Downcast
//let messageCell = cell as! MessageCell   // messageCell object has cast to its subclass MessageCell

//              as? -> safer way to performing downcasting capability -> cast to its subclass
//  If you're not sure better to use as?
//if let messageCell = cell as? MessageCell {
//    //then can use messageCell's capabilities
//}

//              as -> Upcast -> cast to its superclass
//let newCell = messageCell as UITableViewCell

func findNemo(from animals: [Animal]) {
    for animal in animals {
//        print(animal.name)
        if animal is Fish {
            print(animal.name)  // still animal is a type Animal
            let fish = animal as! Fish  // we have done type casting of Animal to Fish
            fish.breatheUnderWater()
        }
    }
}

findNemo(from: neighbours)

if let fish = neighbours[1] as? Fish {  // neighbours[1] is Human and not Fish
    fish.breatheUnderWater()
} else {
    print("Casting has failed.")
}


let num = 12    // Int, Double, String are all type of structure
let neighbour2: [Any] = [bhumika, prashant, nemo, num] // Any allows make any type -> Int or String or Human or Animal together -> Any allows both structs and classes
let neighbour3: [AnyObject] = [bhumika, prashant, nemo]   // AnyObject allows only objects created from class -> num is struct and its not allowed here

//let num: NSNumber = 12
//let word: NSString = "abc"
//let neighbour4: [NSObject] = [num, word]
