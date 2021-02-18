//
//  CreateOrderCell.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 17/02/21.
//

import UIKit


protocol CreateOrderCellDelegate: class {
    func textField(editingDidBeginIn cell: CreateOrderCell)
    func textField(editingChangedInTextField newText: String, in cell: CreateOrderCell)
}


public class CreateOrderCell: UITableViewCell {
    
    
    var label: UILabel!
    var textField: UITextField!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        label = UILabel()
        textField = UITextField()
        
        configLabel()
        configTextField()
        
        addSubview(label)
        addSubview(textField)
        
        
        label.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate(
            [label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
             label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
             label.heightAnchor.constraint(equalTo: self.heightAnchor),
             textField.centerYAnchor.constraint(equalTo: self.centerYAnchor),
             textField.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7),
             textField.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 20),
             textField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)])
    }
    
    func configLabel() {
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
    }
    
    func configTextField() {
        textField.borderStyle = .roundedRect
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
