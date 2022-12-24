//
//  Constant.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-24.
//

import Foundation


import Foundation
import UIKit

struct Constant {
    
    //MARK: Manage app environment with release type
    static let appEnvironment: DeploymentEnvironment = .development
    
    //MARK: App environments
    enum DeploymentEnvironment {
        case development
        case staging
        case production
    }
    
    //MARK: Get URLs (Base url etc.)
    enum URLs {
        static let baseUrl = getBaseURL()
    }
    
    
    //MARK: Provide base url for current app environment
    static func getBaseURL() -> String {
        switch Constant.appEnvironment {
        case .development:
            return "https://restcountries.com/v3.1"
        case .staging:
            return ""
        case .production:
            return "https://"
        }
    }
    
}
