//
//  ViewMVC.swift
//  MVC_Webinar
//
//  Created by Raman Kozar on 21/12/2022.
//

import Foundation
import UIKit

class PersonViewMVC: UIView {
    
    private let person: PersonMVC
    private let nameLabel: UILabel = UILabel()
    
    init(person: PersonMVC, frame: CGRect = .zero) {
        
        self.person = person
        super.init(frame: frame)
        
        nameLabel.text = person.name
        addSubview(nameLabel)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            nameLabel.topAnchor.constraint(equalTo: topAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        backgroundColor = .lightGray
        layer.cornerRadius = nameLabel.frame.height / 2
        
        nameLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        nameLabel.textAlignment = .center
        nameLabel.adjustsFontForContentSizeCategory = true
        nameLabel.minimumScaleFactor = 0.5
        
    }
    
}
