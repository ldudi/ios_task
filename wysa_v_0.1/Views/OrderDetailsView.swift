//
//  OrderDetailsView.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 18/02/21.
//

import UIKit

class OrderDetailsView: UIView {

    var idLabel = UILabel()
    var dateLabel = UILabel()
    var emailLabel = UILabel()
    var nameLabel = UILabel()
    
    var yourId = UILabel()
    var yourdate = UILabel()
    var youremail = UILabel()
    var yourName = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLabels()
    }
    
    func setupLabels() {
        dateLabel.text = "Order Date:"
        leftLabels(label: dateLabel)
        self.addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([dateLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -60),
                                     dateLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -30)])
        idLabel.text = "Order ID:"
        leftLabels(label: idLabel)
        self.addSubview(idLabel)
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([idLabel.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
                                     idLabel.bottomAnchor.constraint(equalTo: dateLabel.topAnchor, constant: -20)])
        emailLabel.text = "Email Address:"
        leftLabels(label: emailLabel)
        self.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([emailLabel.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
                                     emailLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 20)])
        nameLabel.text = "Your Name:"
        leftLabels(label: nameLabel)
        self.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([nameLabel.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
                                     nameLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 20)])
        yourId.text = "abc123"
        rightLabels(label: yourId)
        self.addSubview(yourId)
        yourId.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([yourId.centerYAnchor.constraint(equalTo: idLabel.centerYAnchor),
                                     yourId.leadingAnchor.constraint(equalTo: idLabel.trailingAnchor, constant: 20)])
        yourdate.text = "2/15/21"
        rightLabels(label: yourdate)
        self.addSubview(yourdate)
        yourdate.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([yourdate.centerYAnchor.constraint(equalTo: dateLabel.centerYAnchor),
                                     yourdate.leadingAnchor.constraint(equalTo: dateLabel.trailingAnchor, constant: 20)])
        youremail.text = "john@appleseed.com"
        rightLabels(label: youremail)
        self.addSubview(youremail)
        youremail.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([youremail.centerYAnchor.constraint(equalTo: emailLabel.centerYAnchor),
                                     youremail.leadingAnchor.constraint(equalTo: emailLabel.trailingAnchor, constant: 20),
                                     youremail.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -1)])
        yourName.text = "John AppleSeed"
        rightLabels(label: yourName)
        self.addSubview(yourName)
        yourName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([yourName.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor),
                                     yourName.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 20)])
    }
    
    func leftLabels(label: UILabel) {
        label.textAlignment = .right
        label.backgroundColor = .lightGray
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
    }
    
    func rightLabels(label: UILabel) {
        label.textAlignment = .left
        label.backgroundColor = .lightGray
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
