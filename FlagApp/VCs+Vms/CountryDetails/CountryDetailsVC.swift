//
//  CountryDetailsVC.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-24.
//

import UIKit
import RxSwift
import RxCocoa
import SDWebImage


class CountryDetailsVC: BaseVC {
    
    
    let disposeBag = DisposeBag()
    
    
    //variable
    //  private let bag = DisposeBag()
    let viewModel = CountryDetailsVM()
    
    
    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var commonNameLbl: UILabel!// common name
    @IBOutlet weak var officalNameLbl: UILabel!// offical name
    @IBOutlet weak var capitalCityLbl: UILabel!//capacity
    @IBOutlet weak var currencyLbl: UILabel!
    @IBOutlet weak var languageLbl: UILabel!
    @IBOutlet weak var populationLbl: UILabel!
    
    
    
    //life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getCountryData()
        subscribeModel()
    }
    
    
}


//MARK: api call
extension CountryDetailsVC {
    
    func getCountryData(){
        //start indicator
        startLoading()
        
        viewModel.fetchCountryDetails{ (sccuess,message) in
            
            //stop indicator
            self.stopLoading()
            
            //if any faliure
            if !sccuess {
                AlertProvider.sharedInstance.alert(view: self, title: "Error", message: message)
            }
            
        }
    }
}


//MARK: setup UI
extension CountryDetailsVC {
    
    func subscribeModel(){
        
        viewModel.countrieModel
            .asObservable()
            .subscribe(onNext: { [unowned self] model in
                self.setUpUI(model: model)
            })
            .disposed(by: disposeBag)
    }
    
    func setUpUI(model:CountryListResponseElement){
        self.commonNameLbl.text = model.name?.common ?? "N/A"
        self.officalNameLbl.text = model.name?.official ?? "N/A"
        self.capitalCityLbl.text = model.capital?.first ?? "N/A"
       // self.currencyLbl.text =
        self.currencyLbl.text = model.currencies?.first?.value.name
        self.languageLbl.text = model.languages?.eng ?? "N/A"
        self.populationLbl.text = "\(model.population ?? 0)"
        
        self.countryImage.sd_setImage(with: URL(string:model.flags?.png ?? ""), placeholderImage: UIImage(named: "placeholder_image"))
    }
    
}
