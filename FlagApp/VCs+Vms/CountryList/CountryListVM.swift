//
//  CountryListVM.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-23.
//

import Foundation
import RxSwift
import RxCocoa

class CountryListVM: BaseVM {
    
    
    let countries = PublishSubject<[CountryListResponseElement]>()
    
    func fetchCountryList(completion: @escaping CompletionHandler) {
        
        //check internet connection
        guard Reachability.isInternetAvailable() else {
            completion(false,"Internet connection appears to be offline. ")
            return
        }
        
        AFWrapper.sharedInstance.requestGETCountries { reponse in
            self.countries.onNext(reponse)
            self.countries.onCompleted()
           completion(true,"Data get Sucess")
        } failure: { error in
            print(error.localizedDescription)
            completion(false,error.localizedDescription)
        }

    }
}
