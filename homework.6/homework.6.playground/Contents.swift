// homework.6

import UIKit

// Task 1

let intArray = [12, 15, 16, 19, 21, 24, 31, 45, 64]
let evenIntArray = intArray.filter { $0 % 2 == 0 }
let oddIntArray = intArray.filter { $0 % 2 != 0 }

// Task 2

var optionalIntArray: [Int?] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func sumOptionalInt(firstNumber: Int?, secondNumber: Int?) -> Int {
    if let firstNumber = firstNumber, let secondNumber = secondNumber {
        return firstNumber + secondNumber
    }
    return 0
}

func subOptionalInt(firstNumber: Int?, secondNumber: Int?) -> String {
    guard let firstNumber = firstNumber, let secondNumber = secondNumber else {
        return "Try again"
    }
    return String(firstNumber - secondNumber)
}

func mulOptionalInt(firstNumber: Int?, secondNumber: Int?) -> Int {
    (firstNumber ?? 0) * (secondNumber ?? 0)
}

func divOptionalInt(firstNumber: Int?, secondNumber: Int?) -> Int {
    if let firstNumber = firstNumber, let secondNumber = secondNumber {
        return firstNumber / secondNumber
    }
    
    return 0
}

func powOptionalInt(firstNumber: Int?, exponential: Int) -> Int {
    if let firstNumber = firstNumber {
        return Int(pow(Double(firstNumber), Double(exponential)))
    }
    
    return 0
}

// Task 3

var optionalStringsArray = [String?]()
optionalStringsArray = ["12131", "Hello", "World", "101"]

func createCharacterArray(_ optionalStringsArray: [String?]) -> [Character] {
        var newCharacterArray = [Character]()

        for element in optionalStringsArray {
            guard let element = element else {
                return [Character]()
            }

            for char in element {
                newCharacterArray.append(char)
            }
        }

        return newCharacterArray
    }

func countRepeatedCharacter(_ optionalStringsArray: [String?]) {
        let newCharacterArray = createCharacterArray(optionalStringsArray)
        
        let result = newCharacterArray.reduce(into: [Character: Int]()) { partialResult, element in
            partialResult[element, default: 0] += 1}
        
        print(result)
    }
