//
//  Extentions.swift
//  FlagApp
//
//  Created by Kavindu Dissanayake on 2022-12-23.
//

import Foundation

extension NSObject {

    class var className: String {
        return String(describing: self)
    }
}


// Store allowed character set for reuse (computed lazily).
private let urlAllowed: CharacterSet =
    .alphanumerics.union(.init(charactersIn: "-._~")) // as per RFC 3986

extension String {
    var urlEncoded: String? {
        return addingPercentEncoding(withAllowedCharacters: urlAllowed)
    }
}
