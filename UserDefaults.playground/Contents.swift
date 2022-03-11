import UIKit

//  UserDefaults is really flexible, really adaptible so that's why it is prone to abuse
//  You should always be using UserDefaults to persist small bits of data anything like few Kilobytes.
//  UserDefaults is not database
//  It is used to store like volume - 0.24 even to grab small pieces of data, your iPhone has to load up the entire UserDefault's plist and its very time consuming when you start saving large data.

let defaults = UserDefaults.standard

let arrayKey = "myArray"
let dictionaryKey = "myDictionary"

defaults.set(0.24, forKey: "Volume")    // float - music volume - 0.24
defaults.set(true, forKey: "MusicOn")
defaults.set("Bhumika", forKey: "PlayerName")
defaults.set(Date(), forKey: "AppLastOpenedByUser")     // Datatype - Any

let array = [1, 2, 3]
defaults.set(array, forKey: arrayKey)   // datatype - any

let dictionary = ["name": "Bhumika"]
defaults.set(dictionary, forKey: dictionaryKey)     // datatype - any





let volume = defaults.float(forKey: "Volume")
let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser")
let myArray = defaults.array(forKey: arrayKey) as! [Int]
let myDictionary = defaults.dictionary(forKey: dictionaryKey)
