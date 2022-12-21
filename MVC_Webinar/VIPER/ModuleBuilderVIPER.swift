//
//  ModuleBuilderVIPER.swift
//  MVC_Webinar
//
//  Created by Raman Kozar on 21/12/2022.
//

import Foundation
import UIKit

class ModuleBuilderVIPER {
    
    static func build() -> UIViewController {
        
        let viewController = ViewControllerVIPER()
        let interactor = InteractorVIPER()
        let router = RouterVIPER(viewController: viewController)
        
        let presenter = PresenterVIPER(viewController: viewController,
                                       interactor: interactor,
                                       router: router)
        
        viewController.presenter = presenter
        return viewController
        
    }
    
}
