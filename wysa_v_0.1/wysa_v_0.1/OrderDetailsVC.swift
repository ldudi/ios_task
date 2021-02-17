//
//  UserDataVC.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 17/02/21.
//

import UIKit

class OrderDetailsVC: UIViewController {
    
    var orderView = UIView()
    var priceView = UIView()
    var priceLabel = UILabel()
    
    var idLabel = UILabel()
    var dateLabel = UILabel()
    var emailLabel = UILabel()
    var nameLabel = UILabel()
    
    var yourId = UILabel()
    var yourdate = UILabel()
    var youremail = UILabel()
    var yourName = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Order Details"
        view.backgroundColor = .white
        addEditBtn()
        setupOrderView()
        setupPriceView()
        setupLabels()
    }
    
    func addEditBtn() {
        let editBtn = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(goToEditVC))
        self.navigationItem.rightBarButtonItem = editBtn
    }
    
    @objc func goToEditVC() {
        let vc: CreateOrderVC = CreateOrderVC(style: .insetGrouped)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func setupOrderView() {
        makeItCard(view: orderView)
        view.addSubview(orderView)
        orderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([orderView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     orderView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                     orderView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7),
                                     orderView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)])
    }
    
    func setupPriceView() {
        makeItCard(view: priceView)
        priceView.backgroundColor = .darkGray
        view.addSubview(priceView)
        priceView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([priceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
                                     priceView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
                                     priceView.heightAnchor.constraint(equalToConstant: 50),
                                     priceView.widthAnchor.constraint(equalToConstant: 250)])
        priceLabel.text = "Order Total:  $39.99"
        priceLabel.backgroundColor = .darkGray
        priceLabel.font = UIFont.italicSystemFont(ofSize: 21)
        priceLabel.textAlignment = .center
        priceLabel.textColor = .white
        priceView.addSubview(priceLabel)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([priceLabel.centerXAnchor.constraint(equalTo: priceView.centerXAnchor),
                                     priceLabel.centerYAnchor.constraint(equalTo: priceView.centerYAnchor),
                                     priceLabel.heightAnchor.constraint(equalTo: priceView.heightAnchor, multiplier: 0.9),
                                     priceLabel.widthAnchor.constraint(equalTo: priceView.widthAnchor, multiplier: 0.9)])
    }
    
    func makeItCard(view: UIView) {
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 7
        let shadowPath = UIBezierPath(roundedRect: orderView.bounds, cornerRadius: 7)
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 3)
        view.layer.shadowOpacity = 0.5
        view.layer.shadowPath = shadowPath.cgPath
    }
    
    func setupLabels() {
        dateLabel.text = "Order Date:"
        leftLabels(label: dateLabel)
        orderView.addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([dateLabel.centerXAnchor.constraint(equalTo: orderView.centerXAnchor, constant: -60),
                                     dateLabel.centerYAnchor.constraint(equalTo: orderView.centerYAnchor, constant: -30)])
        idLabel.text = "Order ID:"
        leftLabels(label: idLabel)
        orderView.addSubview(idLabel)
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([idLabel.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
                                     idLabel.bottomAnchor.constraint(equalTo: dateLabel.topAnchor, constant: -20)])
        emailLabel.text = "Email Address:"
        leftLabels(label: emailLabel)
        orderView.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([emailLabel.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
                                     emailLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 20)])
        nameLabel.text = "Your Name:"
        leftLabels(label: nameLabel)
        orderView.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([nameLabel.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
                                     nameLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 20)])
        yourId.text = "abc123"
        rightLabels(label: yourId)
        orderView.addSubview(yourId)
        yourId.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([yourId.centerYAnchor.constraint(equalTo: idLabel.centerYAnchor),
                                     yourId.leadingAnchor.constraint(equalTo: idLabel.trailingAnchor, constant: 20)])
        yourdate.text = "2/15/21"
        rightLabels(label: yourdate)
        orderView.addSubview(yourdate)
        yourdate.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([yourdate.centerYAnchor.constraint(equalTo: dateLabel.centerYAnchor),
                                     yourdate.leadingAnchor.constraint(equalTo: dateLabel.trailingAnchor, constant: 20)])
        youremail.text = "john@appleseed.com"
        rightLabels(label: youremail)
        orderView.addSubview(youremail)
        youremail.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([youremail.centerYAnchor.constraint(equalTo: emailLabel.centerYAnchor),
                                     youremail.leadingAnchor.constraint(equalTo: emailLabel.trailingAnchor, constant: 20),
                                     youremail.trailingAnchor.constraint(equalTo: orderView.trailingAnchor, constant: -1)])
        yourName.text = "John AppleSeed"
        rightLabels(label: yourName)
        orderView.addSubview(yourName)
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
}
