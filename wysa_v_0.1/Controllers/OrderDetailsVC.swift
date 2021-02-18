//
//  UserDataVC.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 17/02/21.
//

import UIKit

class OrderDetailsVC: UIViewController {
    
    var index = Int()
    var orderSubViews = OrderSubViews()
    
    // MARK: - view life cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Order Details"
        view.backgroundColor = .lightGray
        setupOrderView()
        addEditBtn()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupOrderView()
    }
    
    // MARK: - edit button on navigation bar
    func addEditBtn() {
        let editBtn = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(goToEditVC))
        self.navigationItem.rightBarButtonItem = editBtn
    }
    
    @objc func goToEditVC() {
        let vc: CreateOrderVC = CreateOrderVC(style: .insetGrouped)
        vc.index = index
        vc.isEditingOrder = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - view that contains detail labels and price label
    func setupOrderView() {
        orderSubViews = OrderSubViews(frame: self.view.frame)
        view.addSubview(orderSubViews)
        
        orderSubViews.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([orderSubViews.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     orderSubViews.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     orderSubViews.topAnchor.constraint(equalTo: view.topAnchor),
                                     orderSubViews.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
        
        let name = "\(orders[index].firstName!) \(orders[index].LastName!)"
        orderSubViews.detailsView.yourName.text = name
        orderSubViews.detailsView.youremail.text = orders[index].email
        orderSubViews.detailsView.yourId.text = "qwerty#123"
        orderSubViews.detailsView.yourdate.text = orders[index].date
        orderSubViews.priceLabel.text = "Order Total:  $\(orders[index].price!)"

    }
    
}
