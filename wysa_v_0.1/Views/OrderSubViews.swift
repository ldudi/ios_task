//
//  OrderSubViews.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 18/02/21.
//

import UIKit

class OrderSubViews: UIView {
    
    var baseView: UIView!
    
    var priceView: CardView!
    var priceLabel: UILabel!
    var orderView: CardView!
    var detailsView: OrderDetailsView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupOrderView()
        setupPriceView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - cardView that contains all the detail labels, placing it into center
    func setupOrderView() {
        orderView = CardView(frame: CGRect.zero)
        self.addSubview(orderView)
        orderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([orderView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                                     orderView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                                     orderView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7),
                                     orderView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8)])
        
        detailsView = OrderDetailsView(frame: orderView.bounds)
        orderView.addSubview(detailsView)
        detailsView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([detailsView.centerXAnchor.constraint(equalTo: orderView.centerXAnchor),
                                     detailsView.centerYAnchor.constraint(equalTo: orderView.centerYAnchor),
                                     detailsView.heightAnchor.constraint(equalTo: orderView.heightAnchor),
                                     detailsView.widthAnchor.constraint(equalTo: orderView.widthAnchor)])
    }

    // MARK: - bottom cardView that contains price label
    func setupPriceView() {
        priceView = CardView(frame: CGRect.zero)
        priceView.backgroundColor = .black
        self.addSubview(priceView)
        priceView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([priceView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
                                     priceView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30),
                                     priceView.heightAnchor.constraint(equalToConstant: 50),
                                     priceView.widthAnchor.constraint(equalToConstant: 200)])
        priceLabel = UILabel()
        priceLabel.backgroundColor = .black
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
