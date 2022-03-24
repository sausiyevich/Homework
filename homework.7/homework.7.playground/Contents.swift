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

let student1 = Student.init(firstName: "Иван", lastName: "Иванов", classNumber: "11", gradeByDiscipline: [("Physics", nil)])

let student2 = Student.init(firstName: "Петр", lastName: "Петров", classNumber: "11", gradeByDiscipline: [("Maths", 8)])

let student3 = Student.init(firstName: "Иван", lastName: "Иванов", classNumber: "11", gradeByDiscipline: [("Biology", 7), ("Informatics", 10)])

let student4 = Student.init(firstName: "Алексей", lastName: "Алексеев", classNumber: "10", gradeByDiscipline: [("Chemistry", 6), ("Informatics", 9)])

let studentsArray = [student1, student2, student3, student4]

let school = School.init(students: studentsArray)

school.printInfo()
