//
//  ViewController.swift
//  LearnSQLlite
//
//  Created by Khakim on 30/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblView : UITableView!
    var studenst = [StudentModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        studenst = ModelManager.getInstance().getAllstudents()
        tblView.reloadData()
        }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studenst.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as! StudentCell
        cell.lblName.text = studenst[indexPath.row].name
        cell.lblMarks.text = studenst[indexPath.row].mark
        cell.lblRollNo.text = studenst[indexPath.row].id
//        cell.btnEdit.tag = indexPath.row
//        cell.btnDelete.tag = indexPath.row
//        cell.btnEdit.addTarget(self, action: #selector(onClickEdit(_:)), for: .touchUpInside)
//        cell.btnDelete.addTarget(self, action: #selector(onClickDelete(_:)), for: .touchUpInside)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 120
    }
}

