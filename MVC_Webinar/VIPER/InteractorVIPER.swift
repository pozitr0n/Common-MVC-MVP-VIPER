//
//  InteractorVIPER.swift
//  MVC_Webinar
//
//  Created by Raman Kozar on 21/12/2022.
//

import Foundation

protocol InteractorVIPERProtocol {
    func getPerson() -> PersonMVC
}

class InteractorVIPER { }

extension InteractorVIPER: InteractorVIPERProtocol {
   
    func getPerson() -> PersonMVC {
        let person = PersonMVC(name: "Name VIPER")
        return person
    }
    
}
