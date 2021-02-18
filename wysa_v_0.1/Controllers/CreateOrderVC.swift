//
//  AddUserVC.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 17/02/21.
//

import UIKit

class CreateOrderVC: UITableViewController {
    
    
    var createOrder = Order()
    var isEditingOrder = Bool()
    var index = Int()
    
    // MARK: - table view cells
    var firstNameCell = CreateOrderCell()
    var lastNameCell = CreateOrderCell()
    var phoneCell = CreateOrderCell()
    var emailCell = CreateOrderCell()
    var street1Cell = CreateOrderCell()
    var street2Cell = CreateOrderCell()
    var cityCell = CreateOrderCell()
    var stateCell = CreateOrderCell()
    var zipCell = CreateOrderCell()
        
    
    // MARK: - view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Create Order"
        setupSaveButton()
        setupCells()
        if(isEditingOrder) { createOrder = orders[index]}
    }
    
    
    
    func setupSaveButton() {
        let savebtn = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveUser))
        self.navigationItem.rightBarButtonItem = savebtn
    }
    
    @objc func saveUser() {
        if isEditingOrder {
            orders[index] = createOrder
        } else {
            createOrder.time = Date()
            orders.append(createOrder)
        }
        self.navigationController?.popViewController(animated: true)
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
        if(isEditingOrder) {
            firstNameCell.textField.text = orders[index].firstName
            lastNameCell.textField.text = orders[index].LastName
            phoneCell.textField.text = orders[index].phone
            emailCell.textField.text = orders[index].email
            street1Cell.textField.text = orders[index].street1
            street2Cell.textField.text = orders[index].street2
            cityCell.textField.text = orders[index].city
            stateCell.textField.text = orders[index].state
            zipCell.textField.text = orders[index].zip
        }
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
                case 0: firstNameCell.delegate = self
                        return firstNameCell
                case 1: lastNameCell.delegate = self
                        return lastNameCell
                case 2: phoneCell.delegate = self
                        return phoneCell
                case 3: emailCell.delegate = self
                        return emailCell
                default: fatalError("No cell found in contact info")
                }
        case 1:
                switch indexPath.row {
                case 0: street1Cell.delegate = self
                        return street1Cell
                case 1: street2Cell.delegate = self
                        return street2Cell
                case 2: cityCell.delegate = self
                        return cityCell
                case 3: stateCell.delegate = self
                        return stateCell
                case 4: zipCell.delegate = self
                        return zipCell
                default: fatalError("no cell found in shipment address")
                }
        default:
            fatalError("unknown number of section in create order vc")
        }
    }
    
}

// MARK: - saving textfield texts when editing changes
extension CreateOrderVC: CreateOrderCellDelegate {
    
    func textField(editingChangedInTextField newText: String, in cell: CreateOrderCell) {
        if let indexPath = tableView.indexPath(for: cell) {
            switch indexPath.section {
            case 0:
                    switch indexPath.row {
                    case 0: createOrder.firstName = newText
                    case 1: createOrder.LastName = newText
                    case 2: createOrder.phone = newText
                    case 3: createOrder.email = newText
                    default: fatalError("No text found in contact info")
                    }
            case 1:
                    switch indexPath.row {
                    case 0: createOrder.street1 = newText
                    case 1: createOrder.street2 = newText
                    case 2: createOrder.city = newText
                    case 3: createOrder.state = newText
                    case 4: createOrder.zip = newText
                    default: fatalError("no text found in shipment address")
                    }
            default:
                fatalError("unknown number of section in create order text")
            }
        }
    }
}
