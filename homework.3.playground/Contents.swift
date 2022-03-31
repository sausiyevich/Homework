// homework.3

import Darwin

additionNumbers(10, 12)
additionNumbers(99.8, 100.2)

subtractNumbers(100, 50)
subtractNumbers(200.5, 100)

divideNumbers(20, 4)
divideNumbers(12.8, 2.0)

multiplyNumbers(2, 8)
multiplyNumbers(20.0, 5.1)

sumDigits(1234)

comparisonStrings("Hello", "!")

exponentiation(-2, 5)

print("Factorial = \(factorial(-1))")

// Addition Functions

func additionNumbers(_ firstNumber: Int, _ secondNumber: Int) {
    print("intNumberAddition = \(firstNumber + secondNumber)\n")
}

func additionNumbers(_ firstNumber: Double, _ secondNumber: Double) {
    print("doubleNumberAddition = \(firstNumber + secondNumber)\n")
}

// Subtraction Functions

func subtractNumbers(_ firstNumber: Int, _ secondNumber: Int) {
    print("intNumberSubtraction = \(firstNumber - secondNumber)\n")
}

func subtractNumbers(_ firstNumber: Double, _ secondNumber: Double) {
    print("doubleNumberSubtraction = \(firstNumber - secondNumber)\n")
}

// Multiplication Functions

func multiplyNumbers(_ firstNumber: Int, _ secondNumber: Int) {
    print("intNumberMultiplication = \(firstNumber * secondNumber)\n")
}

func multiplyNumbers(_ firstNumber: Double, _ secondNumber: Double) {
    print("doubleNumberMultiplication = \(firstNumber * secondNumber)\n")
}

// Division Functions

func divideNumbers(_ firstNumber: Int, _ secondNumber: Int) {
    print("intNumberDivision = \(firstNumber / secondNumber)\n")
}

func divideNumbers(_ firstNumber: Double, _ secondNumber: Double) {
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

func comparisonStrings(_ firstString: String, _ secondString: String) {
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
