//
//  ListTableVC.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 17/02/21.
//

import UIKit

class ListTableVC: UITableViewController {
    
    // MARK: - view life cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.title = "List Orders"
        tableView.register(ListCell.self, forCellReuseIdentifier: "listcell")
        setupNavBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    // MARK: - setting up add button in navigation bar
    func setupNavBar() {
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addUser))
        self.navigationItem.rightBarButtonItem = addButton
    }
    
    @objc func addUser() {
        let vc: CreateOrderVC = CreateOrderVC(style: .insetGrouped)
        vc.isEditingOrder = false
        self.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listcell", for: indexPath) as! ListCell
        cell.date.text = "\(orders[indexPath.row].date!)"
        cell.price.text = "$\(orders[indexPath.row].price!)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc: OrderDetailsVC = OrderDetailsVC()
        vc.index = indexPath.row
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
