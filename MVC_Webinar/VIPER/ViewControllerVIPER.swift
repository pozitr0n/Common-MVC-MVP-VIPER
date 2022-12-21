//
//  ViewControllerVIPER.swift
//  MVC_Webinar
//
//  Created by Raman Kozar on 21/12/2022.
//

import Foundation
import UIKit

protocol ViewControllerVIPERProtocol: AnyObject {
    func showPerson(_ person: PersonMVC)
}

class ViewControllerVIPER: UIViewController {
    
    var presenter: PresenterVIPER!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        presenter.showPerson()
        
    }
    
}

extension ViewControllerVIPER: ViewControllerVIPERProtocol {
    
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
