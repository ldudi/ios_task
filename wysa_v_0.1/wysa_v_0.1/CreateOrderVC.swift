//
//  AddUserVC.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 17/02/21.
//

import UIKit

class CreateOrderVC: UITableViewController {
    
    var firstNameCell = CreateOrderCell()
    var lastNameCell = CreateOrderCell()
    var phoneCell = CreateOrderCell()
    var emailCell = CreateOrderCell()
    
    var street1Cell = CreateOrderCell()
    var street2Cell = CreateOrderCell()
    var cityCell = CreateOrderCell()
    var stateCell = CreateOrderCell()
    var zipCell = CreateOrderCell()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Create Order"
        setupSaveButton()
        setupCells()
    }
    
    func setupSaveButton() {
        let savebtn = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveUser))
        self.navigationItem.rightBarButtonItem = savebtn
    }
    
    @objc func saveUser() {
        self.navigationController?.popViewController(animated: true)
        showSavedAlert()
        print("user data saved")
    }
    
    func showSavedAlert() {
        print("alert shown")
    }
    
    func setupCells() {
        firstNameCell.label.text = "First Name"
        lastNameCell.label.text = "Last Name"
        phoneCell.label.text = "Phone"
        emailCell.label.text = "Email"
        street1Cell.label.text = "Street 1"
        street2Cell.label.text = "Street 2"
        cityCell.label.text = "City"
        stateCell.label.text = "State"
        zipCell.label.text = "Zip"
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Customer Contact Info"
        case 1:
            return "Shipment Address"
        default:
            fatalError("unknown number of section in create order vc")
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section) {
        case 0: return 4
        case 1: return 5
        default: fatalError("unknown number of section in create order vc")
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
                switch indexPath.row {
                case 0: return firstNameCell
                case 1: return lastNameCell
                case 2: return phoneCell
                case 3: return emailCell
                default: fatalError("No cell found in contact info")
                }
        case 1:
                switch indexPath.row {
                case 0: return street1Cell
                case 1: return street2Cell
                case 2: return cityCell
                case 3: return stateCell
                case 4: return zipCell
                default: fatalError("no cell found in shipment address")
                }
        default:
            fatalError("unknown number of section in create order vc")
        }
    }
}
