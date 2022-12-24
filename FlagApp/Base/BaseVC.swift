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

//custom back item
extension BaseVC {
    
    func defaultBackBtn(){
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(image: UIImage(named: "back_btn")!.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), style: UIBarButtonItem.Style.plain, target: self, action: #selector(self.backToPrevouis(sender:)))
        self.navigationItem.leftBarButtonItem = newBackButton
    }
    
    @objc func backToPrevouis(sender: UIBarButtonItem) {
        self.goBack()
    }
    
}
