//
//  ViewController.swift
//  MVC_Webinar
//
//  Created by Raman Kozar on 21/12/2022.
//

import UIKit

class ViewControllerMVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        showName()
        
    }

    private func showName() {
        
        let model = PersonMVC(name: "MVC")
        let personView = PersonViewMVC(person: model)
        
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

