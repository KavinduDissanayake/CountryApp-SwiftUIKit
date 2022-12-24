//
//  CountryListResponseElement.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-24.
//

import Foundation

// MARK: - CountryListResponseElement
struct CountryListResponseElement: Codable {
    let name: Name?
    var currencies: [String: currencie]?
    let capital: [String]?
    let region, subregion: String?
    let languages: Languages?
    let latlng: [Double]?
    let flag: String?
    let population: Int?
    let flags: Flags?
}

typealias CountryListResponse = [CountryListResponseElement]

