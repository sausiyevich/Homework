// homework.5

import UIKit

var citiesAndFacts = ["Moscow": ("Largest city in Europe.", "Russia"), "Buenaventura": ("Wettest city in the world", "Colombia"), "Malé": ("The worlds smallest capital", "Republic of Maldives")]

// Task 1

func addItemToDictionary(city: String, fact: (String, String), to: [String: (String, String)]) -> [String: (String, String)] {
    var newDictionary = to
    newDictionary[city] = (fact)
    return newDictionary
}


func removeElementFromDictionary(city: String, from: [String: (String, String)]) -> [String: (String, String)] {
    var newDictionary = from
    newDictionary[city] = nil
    return newDictionary
}

// Task 2

func nameOver6Letters(from: [String: (String, String)]) -> [String: (String, String)]{
    var newDictionary = [String : (String, String)]()
    newDictionary = from.filter({$0.key.count > 6})
    return newDictionary
}

// Task 3

func dictionaryToStringArray(cityDictionary: [String: (String, String)]) -> [String]{
    var newStringArray = [String]()
    
    for element in cityDictionary {
        newStringArray.append("\(element.key): \(element.value.0)")
    }
    
    newStringArray.sorted { $0 < $1 }
    
    return newStringArray
}

// Task 4

let continentsAndCountries = [("Eurasia", "Russia"), ("Eurasia", "Belarus"), ("Eurasia", "Poland"),
                              ("North America", "Canada"), ("North America", "Cuba"), ("North America", "El Salvador"),
                              ("South America", "Argentina"), ("South America", "Brazil"), ("South America", "Colombia"),
                              ("Africa", "Egypt"), ("Africa", "Morocco"), ("Africa", "Mozambique"), ("Australia", "Australia"),
                              ("Antarctica", "No country here")]

func getCountries(of continent: String, _ array: [(String, String)]) -> [String: Set<String>] {
    
    var emptyDictionary = [String : Set<String>]()
    var emptySet: Set<String> = []
    
    for element in array.filter({ $0.0 == continent }) {
        emptySet.insert(element.1)
    }
        
    emptyDictionary[continent] = emptySet
    
    return emptyDictionary
}

// Task 5

var intArray = [1, 2, 6, 8, 12, 54, 67, 89, 92, 33, 45, 2, 8]

func checkForDuplicates(on: [Int]){
    let duplicates = Dictionary(grouping: on, by: {$0}).filter { $1.count > 1 }.keys
    !duplicates.isEmpty ? print("Array contains duplicate elements") : print("The array does not contain duplicate elements")
}
