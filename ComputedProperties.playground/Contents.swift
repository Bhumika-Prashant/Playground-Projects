import Foundation

/*//  Stored Properties

let pizzaInInches: Int = 10

var numberOfSlices: Int = 6

print(numberOfSlices)
//  These both properties are called Stored Properties which can store values and we can then access the values


 

//  Computed Properties
 
//  It has to be a var
//  You have to declare its data type explicitly in order to use Computed Properties

let pizzaInInches1: Int = 8

var numberOfSlices1: Int {
    return pizzaInInches1 - 4
}
// in this block of code -> programmers will call a Getter because what it does is it executes the code in order to get the value of this property, it is shorter version of Getter

 
var numberOfSlices1: Int {
    get {
        return pizzaInInches1 - 4   // Getter - this block of code will execute whenever we try to get the value of a property
    }
    set {
        print("numberOfSlices now has a new value which is \(newValue)")//  Setter - this block of code will be executed whenever this property gets a new value sets to it
    }
}
numberOfSlices1 = 12


//  we can also do it with method but the code becomes lengthy here so lots of error chances

//func calcPizzaSlices() {
//    numberOfSlices = pizzaInInches - 4
//}
//calcPizzaSlices()
//print(numberOfSlices)

//  whenever you find creating a method that doesn't have an input and doesn't have an output and all it does is execute the code then consider use a Computed Property
*/


/*let pizzaInInches: Int = 16
var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
}

var numberOfPizza: Int {
    get {   // Getter -> read-only property
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {   // Setter
        let totalSlices = numberOfSlices * newValue     // newValue -> newValue that property is going to be set to
        numberOfPeople = totalSlices / slicesPerPerson
    }
}
print(numberOfPizza)
numberOfPizza = 4
print(numberOfPeople)


var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
}

var numberOfPizza: Int {
    get {   // Getter -> read-only property
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {   // Setter
        let totalSlices = numberOfSlices * newValue     // newValue -> newValue that property is going to be set to
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

print(numberOfPizza)
numberOfPizza = 4
print(numberOfPeople)*/




//  Observed Properties -> it observes when its value gets changed

var pizzaInInches: Int = 10 {
    willSet {   // they monitor when this pizzaInInches property gets changed, right before it gets changed this block of code triggers
        print(pizzaInInches)
        print(newValue)
    }
    didSet {    // right after it gets changed this block of code triggers
        print(oldValue)
        print(pizzaInInches)
        if pizzaInInches >= 18 {
            print("Invalid size specified, pizzaInInches set to 18.")
            pizzaInInches = 18
        }
    }
}
pizzaInInches = 33
print(pizzaInInches)

