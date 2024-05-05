// 
//  UniversityDetailsRouter.swift
//  UniversitiesApp
//
//  Created by Abanoub Nabil on 05/05/2024.
//

import UIKit

public class UniversityDetailsRouter: UniversityDetailsRouterProtocol {
    
    enum Route {
        case dismissAndReload
    }
    
    // MARK: - Attributes
    weak var viewController: UIViewController?

    // MARK: - Methods
    public static func assembleModule(model: UniversityDetailsInputModel, delegate: UniversityDetailsViewControllerDelegate) -> UIViewController {
        let view = UniversityDetailsViewController()
        let interactor = UniversityDetailsInteractor()
        let router = UniversityDetailsRouter()
        let presenter = UniversityDetailsPresenter(view: view, interactor: interactor, router: router, model: model, delegate: delegate)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
    
    // MARK: - Navigation
    func go(to route: Route) {
        
        switch route {
        case .dismissAndReload:
            dismissAndReload()
        }
    }
}


extension UniversityDetailsRouter {
    
    private func dismissAndReload() {
        viewController?.dismiss(animated: true)
    }
}
