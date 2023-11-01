//
//  AddStudentViewController.swift
//  LearnSQLlite
//
//  Created by Khakim on 30/10/23.
//

import UIKit

class AddStudentViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtMarks: UITextField!
    @IBOutlet weak var btnAdd: UIButton!
    

    var studentModel : StudentModel?
        var headerTitle = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickSava(_ sender: UIButton) {
        let student = StudentModel(id: "", name: txtName.text!, mark: txtMarks.text!)
        let isSave = ModelManager.getInstance().SaveStudent(student: student)
        print("isSave :- \(isSave)")
    }
//    @IBAction func onClickSava(_ sender: UIButton){
//        if headerTitle != ""{
//            let student = StudentModel(id: studentModel!.id, name: txtName.text!, mark: txtMarks.text!)
//            let isUpdate = ModelManager.getInstance().updateStudent(student: student)
//            print("isUpdate :- \(isUpdate)")
//        }
//        else{
//            let student = StudentModel(id: "", name: txtName.text!, mark: txtMarks.text!)
//            let isSave = ModelManager.getInstance().SaveStudent(studentModel: student)
//            print("isSave :- \(isSave)")
//        }
//    }
    
}
