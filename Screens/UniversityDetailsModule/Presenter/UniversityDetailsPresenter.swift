// 
//  UniversityDetailsPresenter.swift
//  UniversitiesApp
//
//  Created by Abanoub Nabil on 05/05/2024.
//

import UIKit

class UniversityDetailsPresenter: UniversityDetailsPresenterProtocol {

    // MARK: - Attributes
    weak var view: UniversityDetailsViewProtocol?
    var interactor: UniversityDetailsInteractorProtocol
    var router: UniversityDetailsRouterProtocol
    
    private var university: UniversityDetailsInputModel?
    private weak var delegate: UniversityDetailsViewControllerDelegate?
   
    // MARK: - Init
    required init(view: UniversityDetailsViewProtocol,
                  interactor: UniversityDetailsInteractorProtocol,
                  router: UniversityDetailsRouterProtocol,
                  model: UniversityDetailsInputModel,
                  delegate: UniversityDetailsViewControllerDelegate) {
        self.view = view
        self.interactor = interactor
        self.router = router
        self.view?.universityData = model
        self.delegate = delegate
    }

    // MARK: - Life Cycle
    func viewDidLoad() {
        view?.setupUI()
    }
}

// MARK: - UniversityDetailsInteractorOutputProtocol
extension UniversityDetailsPresenter: UniversityDetailsInteractorOutputProtocol {
    
    func dismissThenRefreshList() {
        router.go(to: .dismissAndReload)
        delegate?.refreshList()
    }
}
