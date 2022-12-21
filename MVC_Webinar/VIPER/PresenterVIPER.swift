//
//  PresenterVIPER.swift
//  MVC_Webinar
//
//  Created by Raman Kozar on 21/12/2022.
//

import Foundation

protocol PresenterVIPERProtocol {
    func showPerson()
}

class PresenterVIPER {
    
    weak var viewController: ViewControllerVIPERProtocol?
    var interactor: InteractorVIPERProtocol
    var router: RouterVIPERProtocol
    
    init(viewController: ViewControllerVIPERProtocol,
         interactor: InteractorVIPERProtocol,
         router: RouterVIPERProtocol
    ) {
        self.viewController = viewController
        self.interactor = interactor
        self.router = router
    }
    
}

extension PresenterVIPER: PresenterVIPERProtocol {
    
    func showPerson() {
        let person = interactor.getPerson()
        viewController?.showPerson(person)
    }
    
}
