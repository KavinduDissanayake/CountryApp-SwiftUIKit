//
//  BaseVC.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-24.
//

import UIKit


class BaseVC :UIViewController,LoadingIndicatorDelegate{
    
    // Back navigation
    func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    
}
