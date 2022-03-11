import UIKit

enum CustomError: Error {
    case invalidURL
    case urlEmpty
    case otherURLErrors
}

func validateURL(urlString: String) throws -> Bool {    // this function can throw away errors
    guard !urlString.isEmpty else {
        throw CustomError.urlEmpty
    }
    guard URL(string: urlString) != nil else {
        throw CustomError.invalidURL
    }
    return true
}

func checkValid() {
    let urlString = "https://www.google.com/?client=safari&channel=mac_bm"
    do {
        let result = try validateURL(urlString: urlString)
        print(result)
    } catch {
        print(error)
    }
}

checkValid()
