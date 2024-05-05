// 
//  UniversityDetailsViewController.swift
//  UniversitiesApp
//
//  Created by Abanoub Nabil on 05/05/2024.
//

import UIKit

class UniversityDetailsViewController: UIViewController, UniversityDetailsViewProtocol {
    // MARK: - Outlets
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var stateLabel: UILabel!
    @IBOutlet private weak var countryLabel: UILabel!
    @IBOutlet private weak var countryCodeLabel: UILabel!
    @IBOutlet private weak var webPageLabel: UILabel!
    
    // MARK: - Attributes
	var presenter: UniversityDetailsPresenterProtocol!
    var universityData: UniversityDetailsInputModel?
    

    // MARK: - Life Cycle
    convenience init() {
        self.init(nibName: "\(Self.self)", bundle: Bundle(for: Self.self))
    }
    
	override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }

    // MARK: - Deallocation
    deinit {
        debugPrint("\(UniversityDetailsViewController.self)  release from memory")
    }
}

// MARK: - Actions
extension UniversityDetailsViewController {
    
    @IBAction func dismissAndReload(_ sender: Any) {
        presenter.dismissThenRefreshList()
    }
}

// MARK: - Setup UI
extension UniversityDetailsViewController {
    
    func setupUI() {
        setUniversityData()
    }
}

// MARK: - Private Handler
extension UniversityDetailsViewController {
    
    private func setUniversityData() {
        nameLabel.text = universityData?.name ?? "unknown"
        stateLabel.text = universityData?.state ?? "unknown"
        countryLabel.text = universityData?.country ?? "unknown"
        countryCodeLabel.text = universityData?.countryCode ?? "unknown"
        webPageLabel.text = universityData?.webPages?.joined(separator: ", ") ?? "unknown"
    }
}
