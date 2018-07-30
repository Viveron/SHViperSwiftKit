//
//  UIViewController+ViperModuleTransitionHandler.swift
//  SHViperSwiftKit
//
//  Created by Victor Shabanov on 24/07/2018.
//

import Foundation
import UIKit

extension UIViewController: ViperModuleTransitionHandler {
    
    // MARK: - Module transitions
    
    public func openModule(controller: UIViewController, animated: Bool) {
        navigationController?.pushViewController(controller, animated: animated)
    }
    
    public func presentModule(controller: UIViewController, animated: Bool) {
        present(controller, animated: animated, completion: nil)
    }
    
    public func closeCurrentModule(animated: Bool) {
        let isInNavigationStack = (parent is UINavigationController)
        if let navigationController = parent as? UINavigationController, navigationController.childViewControllers.count > 1 {
            navigationController.popViewController(animated: animated)
        }
        else if presentingViewController != nil {
            dismiss(animated: animated, completion: nil)
        }
        else if !isInNavigationStack && view.superview != nil {
            removeFromParentViewController()
            view.removeFromSuperview()
        }
    }
    
    public func closeOpenedModules(animated: Bool) {
        navigationController?.popToViewController(self, animated: animated)
    }
    
    // MARK: - Submodule transitions
    
    public func openSubmodule(controller: UIViewController, in containerView: UIView) {
        let destinationController: UIViewController = controller
        
        controller.willMove(toParentViewController: self)
        
        self.addChildViewController(destinationController)
        
        controller.beginAppearanceTransition(true, animated: true)
        containerView.addSubview(controller.view)
        
        if #available(iOS 9.0, *) {
            controller.view.translatesAutoresizingMaskIntoConstraints = false
            controller.view.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
            controller.view.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
            controller.view.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive = true
            controller.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        }
        else {
            controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
        
        controller.endAppearanceTransition()
        controller.didMove(toParentViewController: self)
    }
    
    public func closeCurrentSubmodule() {
        willMove(toParentViewController: nil)
        
        beginAppearanceTransition(false, animated: true)
        view.removeFromSuperview()
        endAppearanceTransition()
        
        removeFromParentViewController()
    }
}
