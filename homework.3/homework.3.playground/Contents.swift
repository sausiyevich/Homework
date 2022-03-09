// homework.3

import Darwin

numberAddition(10, 12)
numberAddition(99.8, 100.2)

numberSubtraction(100, 50)
numberSubtraction(200.5, 100)

numberDivision(20, 4)
numberDivision(12.8, 2.0)

numberMultiplication(2, 8)
numberMultiplication(20.0, 5.1)

sumDigits(1234)

stringComparison("Hello", "!")

exponentiation(2, 2)

print("Factorial = \(factorial(-1))")

// Addition Functions

func numberAddition(_ firstNum: Int, _ secondNum: Int) {
    print("intNumberAddition = \(firstNum + secondNum)\n")
}

func numberAddition(_ firstNum: Double, _ secondNum: Double) {
    print("doubleNumberAddition = \(firstNum + secondNum)\n")
}

// Subtraction Functions

func numberSubtraction(_ firstNum: Int, _ secondNum: Int) {
    print("intNumberSubtraction = \(firstNum - secondNum)\n")
}

func numberSubtraction(_ firstNum: Double, _ secondNum: Double) {
    print("doubleNumberSubtraction = \(firstNum - secondNum)\n")
}

// Multiplication Functions

func numberMultiplication(_ firstNum: Int, _ secondNum: Int) {
    print("intNumberMultiplication = \(firstNum * secondNum)\n")
}

func numberMultiplication(_ firstNum: Double, _ secondNum: Double) {
    print("doubleNumberMultiplication = \(firstNum * secondNum)\n")
}

// Division Functions

func numberDivision(_ firstNum: Int, _ secondNum: Int) {
    print("intNumberDivision = \(firstNum / secondNum)\n")
}

func numberDivision(_ firstNum: Double, _ secondNum: Double) {
    print("doubleNumberDivision = \(firstNum / secondNum)\n")
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

func stringComparison(_ firstString: String, _ secondString: String) {
    firstString == secondString ? print("String are the same!\n") : print("Strings are different!\n")
}

// Exponentioation

func exponentiation(_ number: Double, _ exponent: Double) -> Double {
    var result: Double
    
    guard number > 0 else {
        print("Number less than or equal to zero, try again\n")
        return 0
    }
    
    if exponent == 0 {
        result = 1 // by definition
    }
    else {
        result = pow(number, exponent)
    }
    
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
