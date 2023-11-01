//
//  StudentCell.swift
//  LearnSQLlite
//
//  Created by Khakim on 30/10/23.
//

import UIKit

class StudentCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblMarks: UILabel!
    @IBOutlet weak var btnEdit: UIButton!
    @IBOutlet weak var btnDelete: UIButton!
    @IBOutlet weak var lblRollNo: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
