//
//  UniversityDetailsInputModel.swift
//  UniversityDetails
//
//  Created by Abanoub Nabil on 05/05/2024.
//

import Foundation

public struct UniversityDetailsInputModel {
    var name: String?
    var state: String?
    var country: String?
    var countryCode: String?
    var webPages: [String]?
    
    public init(name: String?, state: String?, country: String?, countryCode: String?, webPages: [String]?) {
        self.name = name
        self.state = state
        self.country = country
        self.countryCode = countryCode
        self.webPages = webPages
    }
}
