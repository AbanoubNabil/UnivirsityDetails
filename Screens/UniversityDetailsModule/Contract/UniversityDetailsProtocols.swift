// 
//  UniversityDetailsProtocols.swift
//  UniversitiesApp
//
//  Created by Abanoub Nabil on 05/05/2024.
//

import Foundation


// MARK: - Router
protocol UniversityDetailsRouterProtocol: AnyObject {
    func go(to route: UniversityDetailsRouter.Route)
}


// MARK: - Interactor
protocol UniversityDetailsInteractorProtocol: AnyObject {
}

protocol UniversityDetailsInteractorOutputProtocol: AnyObject {
}

// MARK: - Presenter
protocol UniversityDetailsPresenterProtocol: AnyObject {
    
    init(view: UniversityDetailsViewProtocol,
         interactor: UniversityDetailsInteractorProtocol,
         router: UniversityDetailsRouterProtocol,
         model: UniversityDetailsInputModel,
         delegate: UniversityDetailsViewControllerDelegate)
    
    func viewDidLoad()
    func dismissThenRefreshList()
}

// MARK: - View
protocol UniversityDetailsViewProtocol: AnyObject {
    
    var presenter: UniversityDetailsPresenterProtocol! { get set }
    
    func setupUI()
    var universityData: UniversityDetailsInputModel? { get set }
}
