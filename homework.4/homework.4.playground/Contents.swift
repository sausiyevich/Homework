// homework.4

import UIKit

var tupleArray = [(100, "Continue"), (202, "Accepted"), (203, "Non-Authoritative Information"),
                  (302, "Found"), (307, "Temporary Redirect"), (404, "Not Found")]

// Task 1

func squaringIntegerElement(_ : [(Int, String)]) -> [Int] {
    var newTupleArray: [Int] = []
    
    for index in 0..<tupleArray.count {
        newTupleArray.append(Int(pow(Double(tupleArray[index].0), 2)))
    }
    
    return newTupleArray
}

// Task 2

func writingEvenElements(_ : [(Int, String)]) -> [(Int, String)] {
    var newTupleArray: [(Int, String)] = []

    for index in 0..<tupleArray.count {
        if tupleArray[index].0 % 2 == 0 {
            newTupleArray.append(tupleArray[index])
        }
    }

    return newTupleArray
}

func alternativeWritingEvenElements(_ : [(Int, String)]) -> [(Int, String)] {
    var newTupleArray: [(Int, String)] = []

    newTupleArray = tupleArray.filter { $0.0 % 2 == 0 }

    return newTupleArray
}

// Task 3

func sortingByAscendingString(_ : [(Int, String)]) -> [(Int, String)] {
    var newTupleArray: [(Int, String)] = []

    newTupleArray = tupleArray.sorted { $0.1 < $1.1 }

    return newTupleArray
}

print(squaringIntegerElement(tupleArray))
print(writingEvenElements(tupleArray))
print(alternativeWritingEvenElements(tupleArray))
print(sortingByAscendingString(tupleArray))
