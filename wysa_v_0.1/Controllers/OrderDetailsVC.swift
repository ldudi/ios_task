//
//  UserDataVC.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 17/02/21.
//

import UIKit

class OrderDetailsVC: UIViewController {
    
    var orderView = CardView()
    var priceView = CardView()
    var detailsView = OrderDetailsView()
    var priceLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Order Details"
        view.backgroundColor = .white
        addEditBtn()
        setupOrderView()
        setupPriceView()
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
        orderView = CardView(frame: CGRect.zero)
        view.addSubview(orderView)
        orderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([orderView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     orderView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                     orderView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7),
                                     orderView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)])
        
        detailsView = OrderDetailsView(frame: orderView.bounds)
        orderView.addSubview(detailsView)
        detailsView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([detailsView.centerXAnchor.constraint(equalTo: orderView.centerXAnchor),
                                     detailsView.centerYAnchor.constraint(equalTo: orderView.centerYAnchor),
                                     detailsView.heightAnchor.constraint(equalTo: orderView.heightAnchor),
                                     detailsView.widthAnchor.constraint(equalTo: orderView.widthAnchor)])
    }
    
    func setupPriceView() {
        priceView = CardView(frame: CGRect.zero)
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
}
