// homework.7

import UIKit

struct Student {
    
    let firstName: String
    let lastName: String
    var classNumber: String = "Class number"
    var gradeByDiscipline: [(String, Double?)] = [("Discipline", nil)]
    
    func printInfo() {
        print("Name - \(firstName) \(lastName)\nClass - \(classNumber)\nGrades - \(gradeByDiscipline)\n")
    }
    
}

struct School {
    
    let students: [Student]
    
    init(students: [Student]) {
        self.students = students
    }
    
    func printInfo() {
        students.enumerated().forEach { $0.element.printInfo() }
    }
    
}

let firstStudent = Student(firstName: "Иван", lastName: "Иванов", classNumber: "11", gradeByDiscipline: [("Physics", nil)])

let secondStudent = Student(firstName: "Петр", lastName: "Петров", classNumber: "11", gradeByDiscipline: [("Maths", 8)])

let thirdStudent = Student(firstName: "Иван", lastName: "Иванов", classNumber: "11", gradeByDiscipline: [("Biology", 7), ("Informatics", 10)])

let fourthStudent = Student(firstName: "Алексей", lastName: "Алексеев", classNumber: "10", gradeByDiscipline: [("Chemistry", 6), ("Informatics", 9)])

let studentsArray = [firstStudent, secondStudent, thirdStudent, fourthStudent]

let school = School(students: studentsArray)

school.printInfo()
