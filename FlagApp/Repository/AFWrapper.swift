//
//  AFWrapper.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-24.
//
import Foundation
import UIKit
import Alamofire

class AFWrapper: NSObject {
    
    static let sharedInstance = AFWrapper()
    
    
    func requestGETCountries(success:@escaping ([CountryListResponseElement]) -> Void, failure:@escaping (Error) -> Void){
           
           AF.request(Constant.getBaseURL() + "/all", method: .get, encoding: JSONEncoding.default)
               .validate(statusCode: 200..<300)
                     .responseData { response in // note the change to responseData
                         switch response.result {
                         case .failure(let error):
                             print(error)
                             failure(error)
                             
                         case .success(let data):
                             do {
                                 let decoder = JSONDecoder()
                                 decoder.keyDecodingStrategy = .convertFromSnakeCase
                                 let result = try decoder.decode([CountryListResponseElement].self, from: data)
                                 print(result)
                                 success(result)
                             } catch {
                                 print(error)
                                 failure(error)
                            }
                         }
               }
        
       }
    
    
    
    
    func requestGETViewCountry(name:String,success:@escaping (CountryListResponseElement) -> Void, failure:@escaping (Error) -> Void){
           
        AF.request(Constant.getBaseURL() + "/name/\(name.urlEncoded ?? "")", method: .get, encoding: JSONEncoding.default)
              // .validate(statusCode: 200..<300) //to validate
                     .responseData { response in // note the change to responseData
                         switch response.result {
                         case .failure(let error):
                             print(error)
                             failure(error)
                             
                         case .success(let data):
                             do {
                                 let decoder = JSONDecoder()
                                 decoder.keyDecodingStrategy = .convertFromSnakeCase
                                 let result = try decoder.decode([CountryListResponseElement].self, from: data)
                                 print(result)
                                 
                                 guard let responseModel = result.first else {
                                     return   failure(ModelReadError("Failed to read model"))
                                 }
                                 
                                 success(responseModel)
                             } catch {
                                 print(error)
                                 failure(error)
                            }
                         }
               }
        
       }
    
    

}



struct ModelReadError: Error {
    let message: String

    init(_ message: String) {
        self.message = message
    }

    public var localizedDescription: String {
        return message
    }
}
