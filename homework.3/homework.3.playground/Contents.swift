// homework.3

import Darwin

addNumbers(10, 12)
addNumbers(99.8, 100.2)

subNumbers(100, 50)
subNumbers(200.5, 100)

divNumbers(20, 4)
divNumbers(12.8, 2.0)

mulNumbers(2, 8)
mulNumbers(20.0, 5.1)

sumDigits(1234)

compStrings("Hello", "!")

exponentiation(-2, 5)

print("Factorial = \(factorial(-1))")

// Addition Functions

func addNumbers(_ firstNumber: Int, _ secondNumber: Int) {
    print("intNumberAddition = \(firstNumber + secondNumber)\n")
}

func addNumbers(_ firstNumber: Double, _ secondNumber: Double) {
    print("doubleNumberAddition = \(firstNumber + secondNumber)\n")
}

// Subtraction Functions

func subNumbers(_ firstNumber: Int, _ secondNumber: Int) {
    print("intNumberSubtraction = \(firstNumber - secondNumber)\n")
}

func subNumbers(_ firstNumber: Double, _ secondNumber: Double) {
    print("doubleNumberSubtraction = \(firstNumber - secondNumber)\n")
}

// Multiplication Functions

func mulNumbers(_ firstNumber: Int, _ secondNumber: Int) {
    print("intNumberMultiplication = \(firstNumber * secondNumber)\n")
}

func mulNumbers(_ firstNumber: Double, _ secondNumber: Double) {
    print("doubleNumberMultiplication = \(firstNumber * secondNumber)\n")
}

// Division Functions

func divNumbers(_ firstNumber: Int, _ secondNumber: Int) {
    print("intNumberDivision = \(firstNumber / secondNumber)\n")
}

func divNumbers(_ firstNumber: Double, _ secondNumber: Double) {
    print("doubleNumberDivision = \(firstNumber / secondNumber)\n")
}

// Sum of Number Digits

func sumDigits(_ number: Int) {
    var number = number
    var result = 0
    
    while number != 0 {
        result += number % 10
        number /= 10
    }
    print("Sum of Digits - \(result)\n")
}

// String comparison

func compStrings(_ firstString: String, _ secondString: String) {
    firstString == secondString ? print("String are the same!\n") : print("Strings are different!\n")
}

// Exponentioation

func exponentiation(_ number: Double, _ exponent: Double) -> Double {
    var result: Double
    
    guard number > 0 else {
        print("Number less than or equal to zero, try again\n")
        return 0
    }
    
    result = pow(number, exponent)
    
    print("\(number) in degree \(exponent) = \(result)\n")
    return result
}

// Factorial

func factorial(_ number: Int) -> Int {
    let result: Int
    
    if number < 0 {
        print("Please enter a natural number and try again\n")
        return 0
    }
    else if number == 0 {
        return 1 // by definition
    }
    else {
        result = number * factorial(number - 1)
        return result
    }
}
