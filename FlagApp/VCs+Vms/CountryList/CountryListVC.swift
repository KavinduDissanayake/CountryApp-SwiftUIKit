//
//  ViewController.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-23.
//

import UIKit
import RxSwift
import RxCocoa


class CountryListVC: BaseVC {
    
    //outlet
    @IBOutlet weak var countryTableView: UITableView!
    
    
    //variable
    private let bag = DisposeBag()
    private let viewModel = CountryListVM()
    
   
    //life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //bind table
        bindTableView()
        
        //api call
        getListData()
    }
    
    
}

//MARK: api call
extension CountryListVC {
    
    func getListData(){
        //start indicator
        startLoading()
        
        viewModel.fetchCountryList(){ (sccuess,message) in
            
            //stop indicator
            self.stopLoading()
            
            //if any faliur
            if !sccuess {
                AlertProvider.sharedInstance.alert(view: self, title: "Error", message: message)
            }
            
        }
    }
}
//MARK: table view
extension CountryListVC {
    private func bindTableView() {
        //register xib
        self.countryTableView.register(UINib(nibName: FlagCardTVC.className, bundle: Bundle.main), forCellReuseIdentifier: FlagCardTVC.className)
        
        
        //cell declare
        viewModel.countries.bind(to: countryTableView.rx.items(cellIdentifier: FlagCardTVC.className, cellType: FlagCardTVC.self)) { (row,item,cell) in
            //ui config 
            cell.configUI(model: item)
            cell.selectionStyle =  .none
        }.disposed(by: bag)
        
        
        //row selected
        countryTableView.rx.modelSelected(CountryListResponseElement.self).subscribe(onNext: { item in
//             print("SelectedItem: \(item.name)")
            ASP.shared.pushToViewController(in: .Main, for:"CountryDetailsVC", from: self,data: item.name?.common)
            
        }).disposed(by: bag)
        
    }
    
}
