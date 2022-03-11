import Foundation

let fruits = ["Apple", "Pear", "Orange"]    // in Array -> we get sequence in order
//let fruits: Set = ["Apple", "Pear", "Orange"]   // in Set -> doesn't come in order
let contacts = ["Adam": 123456789, "James": 987654321, "Amy": 912347654]
let word = "supercalifragilisticexpialidocious"
let halfOpenRange = 1..<5
let closedRange = 1...5

//  MARK: - For Loop

for fruit in fruits {
    print(fruit)
}

for person in contacts {
    print(person.key)
    print(person.value)
}

for letter in word {
    print(letter)
}

for number in halfOpenRange {
    print(number)       // 1 2 3 4
}

for number in closedRange {
    print(number)       // 1 2 3 4 5
}

for _ in halfOpenRange {    // if you don't need numbers and just loop any(value) string 4 times
    print("Loop is running")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}
// cats have 4 legs
// ants have 6 legs
// spiders have 8 legs



//  MARK: - While Loop

var index = 10

while index < 20 {
   print( "Value of index is \(index)")
   index = index + 1
}

/*
 Value of index is 10
 Value of index is 11
 Value of index is 12
 Value of index is 13
 Value of index is 14
 Value of index is 15
 Value of index is 16
 Value of index is 17
 Value of index is 18
 Value of index is 19
 */
