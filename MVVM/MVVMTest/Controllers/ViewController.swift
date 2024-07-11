//
//  ViewController.swift
//  MVVMTest
//
//  Created by Hanif M on 11/12/20.
//

import UIKit

class ViewController: UIViewController {

    private var employeeViewModel: EmployeesViewModel!

    private var dataSource: EmployeeTableViewDataSource<EmployeeTableViewCell, EmployeeData>!

    @IBOutlet weak var employeeTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
    }

    func callToViewModelForUIUpdate() {

        self.employeeViewModel = EmployeesViewModel()
        self.employeeViewModel.bindEmployeeViewModelToController = {
            self.updateDataSource()
        }
        
    }

    func updateDataSource() {
        self.dataSource = EmployeeTableViewDataSource(cellIdentifier: "EmployeeTableViewCell", items: self.employeeViewModel.empData.data, configureCell: { (cell, evm) in
            cell.employeeNameLabel.text = evm.avatar
        })

        DispatchQueue.main.async {
            self.employeeTableView.dataSource = self.dataSource
            self.employeeTableView.reloadData()
        }
    }
}



