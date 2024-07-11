//
//  EmployeeTableViewCell.swift
//  MVVMTest
//
//  Created by Hanif M on 11/12/20.
//

import Foundation
import UIKit

class EmployeeTableViewCell: UITableViewCell {

    @IBOutlet weak var employeeNameLabel: UILabel!
    
    var employee: EmployeeData? {
        didSet {
            employeeNameLabel.text = employee?.avatar
        }
    }
}
