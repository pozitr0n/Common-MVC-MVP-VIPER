//
//  ModuleBuilderMVP.swift
//  MVC_Webinar
//
//  Created by Raman Kozar on 21/12/2022.
//

import Foundation
import UIKit

class ModuleBuilderMVP {
    
    static func build() -> UIViewController {
        
        let presenter = PresenterMVP()
        let viewController = ViewControllerMVP(output: presenter)
        presenter.viewInput = viewController
        return viewController
        
    }
    
}
