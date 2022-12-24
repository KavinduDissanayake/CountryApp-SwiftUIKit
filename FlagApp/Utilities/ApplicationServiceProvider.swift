//
//  ApplicationServiceProvider.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-24.
//

import UIKit

let ASP = ApplicationServiceProvider.self


enum ViewContolers: String {
    case CountryDetailsVC
    case CountryListVC
}

enum Storyboard: String {
    case Main
}


class ApplicationServiceProvider {
    
    static let shared = ApplicationServiceProvider()
    
    public func pushToViewController(in sb: Storyboard, for identifier: String, from vc: UIViewController?, data: Any? = nil) {
        
        let storyboard = UIStoryboard(name: sb.rawValue, bundle: nil)
        let destVc = storyboard.instantiateViewController(withIdentifier: identifier)
        if destVc is CountryDetailsVC && data != nil {
            let _vc = storyboard.instantiateViewController(withIdentifier: identifier) as! CountryDetailsVC
            
            if let countryName = data as? String {
                _vc.viewModel.countryName = countryName
            }
            vc?.navigationController?.pushViewController(_vc, animated: true)
        }else{
            vc?.navigationController?.pushViewController(destVc, animated: true)
        }
            
    }
}
