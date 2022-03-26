// Homework.2

import Darwin

let valueOne = 2.5
let valueTwo = 9.7
let valueThree = 6.9
let valueFour = 8.2
print("Original values - \(valueOne), \(valueTwo), \(valueThree), \(valueFour)\n")

// Separating the integer part from values

let valueOneWholePart = Int(valueOne)
let valueTwoWholePart = Int(valueTwo)
let valueThreeWholePart = Int(valueThree)
let valueFourWholePart = round(valueFour)
print("Whole parts - \(valueOneWholePart), \(valueTwoWholePart), \(valueThreeWholePart), \(Int(valueFourWholePart))\n")

// Separating the fractional part from values

let valueOneFractionalPart = valueOne.truncatingRemainder(dividingBy: 2)
let valueTwoFractionalPart = valueTwo.truncatingRemainder(dividingBy: 3)
let valueThreeFractionalPart = valueThree.truncatingRemainder(dividingBy: 2)
let valueFourFractionalPart = valueFour.truncatingRemainder(dividingBy: 2)
print("Fractional parts - \(valueOneFractionalPart), \(valueTwoFractionalPart), \(valueThreeFractionalPart), \(valueFourFractionalPart)\n")

// Sum of whole and fractional parts

let sumWholeParts = valueOneWholePart + valueTwoWholePart + valueThreeWholePart + Int(valueFourWholePart)
let sumFractionalParts = valueOneFractionalPart + valueTwoFractionalPart + valueThreeFractionalPart + valueFourFractionalPart
print("Sum whole parts = \(sumWholeParts)")
print("Sum fractional parts = \(sumFractionalParts)\n")

// Parity check

print("\(valueOneWholePart) is the even number? - \(valueOneWholePart.isMultiple(of: 2))")
print("\(valueTwoWholePart) is the even number? - \(valueTwoWholePart.isMultiple(of: 2))")
print("\(valueThreeWholePart) is the even number? - \(valueThreeWholePart.isMultiple(of: 2))")
print("\(Int(valueFourWholePart)) is the even number? - \(Int(valueFourWholePart).isMultiple(of: 2))")
