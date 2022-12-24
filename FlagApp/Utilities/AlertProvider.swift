//
//  AlertProvider.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-24.
//

import UIKit
class AlertProvider: NSObject {//This is shared class
    
    
static let sharedInstance = AlertProvider()

    //Show alert
    func alert(view: UIViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: { action in
        })
        alert.addAction(defaultAction)
        DispatchQueue.main.async(execute: {
            view.present(alert, animated: true)
        })
    }

    private override init() {
    }
}
