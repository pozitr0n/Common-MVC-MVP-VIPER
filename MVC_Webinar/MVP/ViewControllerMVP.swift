//
//  ViewControllerMVP.swift
//  MVC_Webinar
//
//  Created by Raman Kozar on 21/12/2022.
//

import Foundation
import UIKit

class ViewControllerMVP: UIViewController {
  
    let output: ViewOutputMVP
    
    init(output: ViewOutputMVP) {
        self.output = output
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        output.showPerson()
    }
    
}

extension ViewControllerMVP: ViewInputMVP {
    
    func showPerson(_ person: PersonMVC) {
        
        let personView = PersonViewMVC(person: person)
        
        view.addSubview(personView)
         
        personView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            personView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            personView.widthAnchor.constraint(equalToConstant: 200),
            personView.heightAnchor.constraint(equalToConstant: 50)
        
        ])
        
    }
    
}
