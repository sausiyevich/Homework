//
//  SchoolViewController.swift
//  homework.10
//
//  Created by Stanislau on 04.04.2022.
//

import UIKit

struct Student {
    
    var firstName: String
    var lastName: String
    var classNumber: String
    var gradeByDiscipline: (String, String)
        
    func printInfo() {
        print("Name - \(firstName) \(lastName)\nClass - \(classNumber)\nGrades - \(gradeByDiscipline)\n")
    }
}

struct School {
    
    var students: [Student]
    
    init(students: [Student]) {
        self.students = students
    }
    
    func printInfo() {
        students.enumerated().forEach { $0.element.printInfo() }
    }
    
}

class SchoolViewController: UIViewController {
    
    var school = School.init(students: [])
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var classNumberField: UITextField!
    @IBOutlet weak var disciplineField: UITextField!
    @IBOutlet weak var gradeByDisciplineField: UITextField!
    @IBOutlet weak var studentIformationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "School"
        
    }
    
    @IBAction func addInformation(_ sender: Any) {
        
        firstNameField.text != "" && lastNameField.text != "" ?
        
        school.students.append(Student.init(firstName: firstNameField.text ?? "",
                                            lastName: lastNameField.text ?? "",
                                            classNumber: classNumberField.text ?? "",
                                            gradeByDiscipline: (disciplineField.text ?? "", gradeByDisciplineField.text ?? "")))
        
        : print("Please, enter First Name & Last Name")
        
        firstNameField.text?.removeAll()
        lastNameField.text?.removeAll()
        classNumberField.text?.removeAll()
        disciplineField.text?.removeAll()
        gradeByDisciplineField.text?.removeAll()
        
        school.printInfo()
    }
}
