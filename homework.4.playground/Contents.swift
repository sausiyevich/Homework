// homework.4

import UIKit

var tupleArray = [(100, "Continue"), (202, "Accepted"), (203, "Non-Authoritative Information"),
                  (302, "Found"), (307, "Temporary Redirect"), (404, "Not Found")]

// Task 1

func squareIntegerElement(array : [(Int, String)]) -> [Int] {
    var newTupleArray: [Int] = []
    
    for index in 0..<array.count {
        newTupleArray.append(Int(pow(Double(array[index].0), 2)))
    }
    
    return newTupleArray
}

// Task 2

func writeEvenElements(array : [(Int, String)]) -> [(Int, String)] {
    var newTupleArray: [(Int, String)] = []

    for index in array {
        if index.0 % 2 == 0 {
            newTupleArray.append(index)
        }
    }
    
    return newTupleArray
}

func alternativeWriteEvenElements(array : [(Int, String)]) -> [(Int, String)] {
    var newTupleArray: [(Int, String)] = []

    newTupleArray = array.filter { $0.0 % 2 == 0 }

    return newTupleArray
}

// Task 3

func sortByAscendingString(array : [(Int, String)]) -> [(Int, String)] {
    array.sorted { $0.1 < $1.1 }
}

print(squareIntegerElement(array: tupleArray))
print(writeEvenElements(array: tupleArray))
print(alternativeWriteEvenElements(array: tupleArray))
print(sortByAscendingString(array: tupleArray))

