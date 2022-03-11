import UIKit

        // Structure

struct Town2 {
    let name = "Bhumikaland"
    var citizens = ["Bhumika", "Prashant"]
    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]

    func fortify() {
        print("Defences increased!")
    }

}

var myTown2 = Town2()

print(myTown2.citizens)
print("\(myTown2.name) has \(myTown2.resources["Grain"]!) bags of grain. ")

myTown2.citizens.append("Parv")
print(myTown2.citizens.count)

myTown2.fortify()


    // Initialiser

struct Town1 {
    let name: String
    var citizens: [String]
    var resources: [String: Int]

    init(townName: String, people: [String], stats: [String: Int]) {
        name = townName
        citizens = people
        resources = stats
    }
    
    mutating func harvestRice() {   // if we making the method that modifies one of the properties from within the struct then we have to mark that method as -> mutating
//        by marking the method as mutating -> self will behave like a var and we can freely change any of our struct properties
        
        resources["Rice"] = 100
    }
}

var myTown1 = Town1(townName: "Nameless Island", people: ["Parv"], stats: ["Coconuts": 100])
myTown1.citizens.append("Jashn")
print(myTown1.citizens)
myTown1.harvestRice()
print(myTown1.resources)




struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify() {
        print("Defences increased!")
    }
    
}

// both towns are created from the Town structure (blueprint) but they both are very different

var myTown = Town(name: "Nameless Island", citizens: ["Parv"], resources: ["Coconuts": 100])
myTown.citizens.append("Jashn")
print(myTown.citizens)

var ghostTown = Town(name: "Ghosty McGhostface", citizens: [], resources: ["Tumbleweed": 1])
ghostTown.fortify()


struct User {

   // Initialise a User struct here
   
   let name: String
   let email: String?
   var followers: Int
   var isActive: Bool
   
    init(name: String, email: String?, followers: Int , isActive: Bool) {
        self.name = name
        self.email = email
        self.followers = followers
        self.isActive = isActive
    }
    
   func logStatus() {
       if isActive {
           print("\(name) is working hard")
       } else {
           print("\(name) has left earth")
       }
   }
}

var user = User(name: "Richard", email: nil, followers: 0 , isActive: false)
user.logStatus()
