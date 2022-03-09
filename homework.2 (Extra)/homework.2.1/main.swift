// homework.2 (Extra exercises)

import Foundation

// Task 1

let height = 35
let width = 25

height > width ? print("The number \(height) is greater than \(width)") : print("The number \(width) is greater than \(height)")

// Task 2

let hasKey = false
let hasDocuments = true
let hasPen = true
let takenApple = false
let takenOrange = true
var shouldGoToWork = (hasKey && hasDocuments && hasPen) && (takenApple || takenOrange)

shouldGoToWork ? print("We didn't forget anything :)") : print("Look, maybe you forgot something?")

// Task 3

var valueOne: Double = 1

if valueOne.truncatingRemainder(dividingBy: 3) == 0 && valueOne.truncatingRemainder(dividingBy: 5) == 0 {
    print("FizBuz")
}
else if valueOne.truncatingRemainder(dividingBy: 5) == 0 {
    print("Fiz")
}
else if valueOne.truncatingRemainder(dividingBy: 3) == 0 {
    print("Buz")
}
else {
    print("The number does not satisfy any of the conditions, try again :)")
}

// Task 4

var yearsOldRange = 16..<18

yearsOldRange.upperBound > 18 ? print("You are allowed to drink") : print("Drink juice")

if !(yearsOldRange.contains(18)) {
    print("Think about a way how you can look like an adult")
}

// Task 5

print("Where would you like to fly?")
let sideOfTheWorld = (readLine())!

switch sideOfTheWorld {
case "south":
    print("There's pretty hot there")
case "north":
    print("There's pretty cold there")
case "west":
    print("There're opportunities there")
case "east":
    print("There's a different culture there")
default:
    print("Try again")
}
