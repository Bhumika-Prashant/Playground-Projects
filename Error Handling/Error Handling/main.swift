//
//  main.swift
//  Error Handling
//
//  Created by Bhumika Hirapara on 3/4/22.
//

import Foundation


enum DivisionError: Error {
    case dividedByZero
}

func division(numerator: Int, denominator: Int) throws {    // create a throwing function using throws keyword
    if denominator == 0 {     // throws error if divide by 0
        throw DivisionError.dividedByZero
    } else {
        let result = numerator / denominator
        print(result)
    }
}


do {
    try division(numerator: 10, denominator: 0) // calling function but because it throws error, we have to catch error 
    print("Valid Division")
} catch {
    print("Error: Denominator cannot be 0")
    print("Error: \(error)")
}
