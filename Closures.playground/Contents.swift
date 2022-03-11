import UIKit

//  Closure -> Closures are anonymous functions / functions without names
//  Closure -> You can pass in functions as inputs into other functions and you can also use functions as the return type
//  Closures allow you to package anonymous blocks of functionality and pass it around in your code

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func multiply(no1: Int, no2: Int) -> Int {
    return no1 + no2
}

//  to convert a function  into a closure -> remove func keyword and name of the function -> and then move the open bracket from the end of the line to the beginning of the line and we replace it with the keyword (in)

//{ (no1: Int, no2: Int) -> Int in
//    return no1 * no2
//}

//calculator(n1: 2, n2: 3, operation: multiply)

//calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
//    return no1 * no2
//})

//  Swift is a type inference -> it automally identidies which datatype is

calculator(n1: 2, n2: 3, operation: { (no1, no2) in
    return no1 * no2
})

//  you can also cut -> return

calculator(n1: 2, n2: 3, operation: { (no1, no2) in no1 * no2 })

//  we can still further cut out -> $0 - first parameter -> $1 - second parameter

calculator(n1: 2, n2: 3, operation: {$0 * $1})

//  If the last parameter in your function is a closure(i.e. everything between open and closing curly braces) -> you can omit the last parameter name (trailing closure at the end)

let result = calculator(n1: 2, n2: 3) {$0 * $1}
print(result)



let array = [6, 2, 3, 9, 4, 1]

//func addOne(n1: Int) -> Int {
//    return n1 + 1
//}

print(array.map{$0 + 1})    // to add 1 to each number

let newArray = array.map {"\($0)"}  // to convert each value of array into string
print(newArray)
