//
//  AppDelegate.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-23.
//
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window:UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        window?.makeKeyAndVisible()
        
        
        //----------Testing------------------------------
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let viewController = storyboard.instantiateViewController(withIdentifier: "CountryDetailsVC") as!  CountryDetailsVC
//        viewController.viewModel.countryName = "Saint Vincent and the Grenadines"
//        let navigationController = UINavigationController.init(rootViewController: viewController)
//        self.window?.rootViewController = navigationController
//        
        

        return true
    }
}
