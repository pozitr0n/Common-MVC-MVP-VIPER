//
//  PresenterMVP.swift
//  MVC_Webinar
//
//  Created by Raman Kozar on 21/12/2022.
//

import Foundation

class PresenterMVP {
    weak var viewInput: (ViewInputMVP)?
}

extension PresenterMVP: ViewOutputMVP {
   
    func showPerson() {
        
        let model = PersonMVC(name: "MVP")
        viewInput?.showPerson(model)
        
    }
   
}
