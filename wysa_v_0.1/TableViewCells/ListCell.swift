//
//  ListCell.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 17/02/21.
//

import UIKit

class ListCell: UITableViewCell {
    
    var price: UILabel!
    var date: UILabel!
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupLabels()
        
    }
    
    // MARK: - price label and date label on homepage
    func setupLabels() {
        price = UILabel()
        price.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.light)
        date = UILabel()
        date.font = UIFont.systemFont(ofSize: 17)
        addSubview(price)
        addSubview(date)
        
        price.translatesAutoresizingMaskIntoConstraints = false
        date.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([date.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                                     date.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                                     price.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                                     price.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
