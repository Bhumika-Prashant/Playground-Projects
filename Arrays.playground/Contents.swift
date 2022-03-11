import UIKit

var numbers = [45, 73, 195, 53]
var computedNumbers = [numbers[0]*numbers[1], numbers[1]*numbers[2], numbers[2]*numbers[3], numbers[3]*numbers[0]]

print(computedNumbers)

let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    //The number of letters in alphabet equals 26
    var randomNumber1 = alphabet[Int.random(in: 0...25)]
    var randomNumber2 = alphabet[Int.random(in: 0...25)]
    var randomNumber3 = alphabet[Int.random(in: 0...25)]
    var randomNumber4 = alphabet[Int.random(in: 0...25)]
    var randomNumber5 = alphabet[Int.random(in: 0...25)]
    var randomNumber6 = alphabet[Int.random(in: 0...25)]

    let password = randomNumber1 + randomNumber2 + randomNumber3 + randomNumber4 + randomNumber5 + randomNumber6

    
    print(password)
    
