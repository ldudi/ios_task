//
//  Order.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 18/02/21.
//

import Foundation

public struct Order {
    
    public var firstName: String?
    public var LastName: String?
    public var phone: String?
    public var email: String?
    public var street1: String?
    public var street2: String?
    public var city: String?
    public var state: String?
    public var zip:  String?
    public var time: Date?
    public var date: String?
    public var price: Int?
    
    init() {
        firstName = ""
        LastName = ""
        phone = ""
        email = ""
        street1 = ""
        street2 = ""
        city = ""
        state = ""
        zip = ""
        time = Date()
        toDate()
        price = Int.random(in: 29...99)
    }
    
    mutating func toDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.none
        dateFormatter.dateStyle = DateFormatter.Style.medium
        self.date = dateFormatter.string(from: time!)
    }
}
