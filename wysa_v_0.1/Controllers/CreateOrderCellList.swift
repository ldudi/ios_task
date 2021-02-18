//
//  CreateOrderCellList.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 18/02/21.
//

import Foundation

public class CreateOrderCellList {
    
    var firstNameCell = CreateOrderCell()
    var lastNameCell = CreateOrderCell()
    var phoneCell = CreateOrderCell()
    var emailCell = CreateOrderCell()
    
    var street1Cell = CreateOrderCell()
    var street2Cell = CreateOrderCell()
    var cityCell = CreateOrderCell()
    var stateCell = CreateOrderCell()
    var zipCell = CreateOrderCell()
    
    init() {
        setupLabels()
    }
    
    func setupLabels() {
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
    
}
