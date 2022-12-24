//
//  FlagCardTVC.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-23.
//

import UIKit

class FlagCardTVC: UITableViewCell {

    @IBOutlet weak var officialNameLbl: UILabel!
    @IBOutlet weak var commonNameLbl: UILabel!
    @IBOutlet weak var countryImage: UIImageView!
    
    //life cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configUI(model:CountryListResponseElement){
        self.countryImage.sd_setImage(with: URL(string:model.flags?.png ?? ""), placeholderImage: UIImage(named: "placeholder_image"))
        self.countryImage.layer.cornerRadius =  6
        self.commonNameLbl.text = model.name?.common ?? "N/A"
        self.officialNameLbl.text = model.name?.official ?? "N/A"
    }
  
    
}
