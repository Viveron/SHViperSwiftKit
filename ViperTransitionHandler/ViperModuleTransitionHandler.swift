//
//  ViperModuleTransitionHandler.swift
//  SHViperSwiftKit
//
//  Created by Victor Shabanov on 24/07/2018.
//

import Foundation
import UIKit

public protocol ViperModuleTransitionHandler: class {
    
    /**
     Module transitions
     */
    
    func openModule(controller: UIViewController, animated: Bool)
    
    func presentModule(controller: UIViewController, animated: Bool)
    
    func closeCurrentModule(animated: Bool)
    
    /**
     Submodule transitions
     */
    
    func openSubmodule(controller: UIViewController, in containerView: UIView)
    
    func closeCurrentSubmodule()
}
