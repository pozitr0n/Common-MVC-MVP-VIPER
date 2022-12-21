//
//  RouterVIPER.swift
//  MVC_Webinar
//
//  Created by Raman Kozar on 21/12/2022.
//

import Foundation
import UIKit

protocol RouterVIPERProtocol { }

class RouterVIPER {
 
    var viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
}

extension RouterVIPER: RouterVIPERProtocol { }
