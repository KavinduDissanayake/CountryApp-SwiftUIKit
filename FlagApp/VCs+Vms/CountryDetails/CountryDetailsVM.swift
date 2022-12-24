//
//  CountryDetailsVM.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-24.
//

import Foundation
import RxSwift
import RxCocoa

class CountryDetailsVM: BaseVM {
    
    var countryName = ""
    
    let countrieModel = PublishSubject<CountryListResponseElement>()
    
    func fetchCountryDetails(completion: @escaping CompletionHandler) {
        
        //check internet connection
        guard Reachability.isInternetAvailable() else {
            completion(false,"Internet connection appears to be offline ")
            return
        }
        
        AFWrapper.sharedInstance.requestGETViewCountry(name:countryName) { reponse in
            self.countrieModel.onNext(reponse)
            self.countrieModel.onCompleted()
           completion(true,"Data get Sucess")
        } failure: { error in
            print(error.localizedDescription)
            completion(false,error.localizedDescription)
        }

    }
}
