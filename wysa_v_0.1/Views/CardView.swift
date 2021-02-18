//
//  CardView.swift
//  wysa_v_0.1
//
//  Created by Kapil Dev on 18/02/21.
//

import UIKit

public class CardView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .lightGray
        self.layer.cornerRadius = 7
        let shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 7)
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowPath = shadowPath.cgPath
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
