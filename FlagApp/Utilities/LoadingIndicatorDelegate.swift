//
//  LoadingIndicatorDelegate.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-24.
//

import Foundation
import UIKit
import RappleProgressHUD

protocol LoadingIndicatorDelegate {
    func startLoading()
    func stopLoading()
}

extension LoadingIndicatorDelegate {
    // -------- RappleProgressHUD -------- //
    // Start loading
    func startLoading() {
        RappleActivityIndicatorView.startAnimating()
    }

    // Stop loading
    func stopLoading() {
        RappleActivityIndicatorView.stopAnimation()
    }
    
   
}

