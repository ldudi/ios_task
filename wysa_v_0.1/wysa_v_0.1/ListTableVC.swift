//
//  ListTableVC.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 17/02/21.
//

import UIKit

class ListTableVC: UITableViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.title = "List Orders"
        tableView.register(ListCell.self, forCellReuseIdentifier: "listcell")
        setupNavBar()
    }
    
    
    
    func setupNavBar() {
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addUser))
        self.navigationItem.rightBarButtonItem = addButton
        print("setup Nav Bar")
    }
    
    @objc func addUser() {
        let vc: CreateOrderVC = CreateOrderVC(style: .insetGrouped)
        self.navigationController?.pushViewController(vc, animated: true)
        print("go to next vc")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listcell", for: indexPath) as! ListCell
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc: OrderDetailsVC = OrderDetailsVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
