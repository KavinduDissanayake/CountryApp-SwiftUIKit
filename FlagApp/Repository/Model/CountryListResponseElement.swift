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
    let currencies:  Aed?
    let capital: [String]?
    let region, subregion: String?
    let languages: Languages?
    let latlng: [Double]?
    let flag: String?
    let population: Int?
    let flags: Flags?
}

// MARK: - Currencies
struct Currencies: Codable {
    let xcd, currenciesTRY, aed, cdf: Aed?
    let xpf, rwf, aud, gbp: Aed?
    let imp, idr, zmw, jep: Aed?
    let uyu, cad, pen, khr: Aed?
    let usd, fkp, pgk, scr: Aed?
    let lrd, cve, cuc, cup: Aed?
    let djf, lbp, mmk, kyd: Aed?
    let xaf, zar, srd, crc: Aed?
    let chf, nzd, kpw, uah: Aed?
    let xof, eur, tvd, mad: Aed?
    let mdl, omr, yer, kwd: Aed?
    let egp, ils, jod, cop: Aed?
    let mkd, qar, twd, mga: Aed?
    let bsd, ang, sbd, shp: Aed?
    let hnl, amd, gtq, czk: Aed?
    let mur, gel, php, all: Aed?
    let jmd, rsd, clp, gyd: Aed?
    let tzs, bdt, dop, krw: Aed?
    let bbd, ngn, bhd, kid: Aed?
    let stn, cny, kes, mvr: Aed?
    let bnd, sgd, gnf, mop: Aed?
    let ern, sek, ghs, dkk: Aed?
    let bgn, bwp, irr, bob: Aed?
    let byn, bmd, kzt, lak: Aed?
    let uzs, myr, isk, pyg: Aed?
    let brl, etb, huf: Aed?
    let sdg: Aed?
    let sos, aoa, sar, zwl: Aed?
    let ves, gmd, bzd, dzd: Aed?
    let mru, syp, jpy, rub: Aed?
    let lsl, tnd, awg, hrk: Aed?
    let afn, sll, iqd, kmf: Aed?
    let vnd, ckd, szl, top: Aed?
    let ggp, nad, ttd, btn: Aed?
    let inr, hkd, ssp, tjs: Aed?
    let ugx, wst, azn, lkr: Aed?
    let ars, htg, npr, tmt: Aed?
    let mwk, gip, vuv, mxn: Aed?
    let bam: Aed?
    let ron, nok, kgs, thb: Aed?
    let bif, mzn, nio, pab: Aed?
    let pln, lyd: Aed?

    enum CodingKeys: String, CodingKey {
        case xcd = "XCD"
        case currenciesTRY = "TRY"
        case aed = "AED"
        case cdf = "CDF"
        case xpf = "XPF"
        case rwf = "RWF"
        case aud = "AUD"
        case gbp = "GBP"
        case imp = "IMP"
        case idr = "IDR"
        case zmw = "ZMW"
        case jep = "JEP"
        case uyu = "UYU"
        case cad = "CAD"
        case pen = "PEN"
        case khr = "KHR"
        case usd = "USD"
        case fkp = "FKP"
        case pgk = "PGK"
        case scr = "SCR"
        case lrd = "LRD"
        case cve = "CVE"
        case cuc = "CUC"
        case cup = "CUP"
        case djf = "DJF"
        case lbp = "LBP"
        case mmk = "MMK"
        case kyd = "KYD"
        case xaf = "XAF"
        case zar = "ZAR"
        case srd = "SRD"
        case crc = "CRC"
        case chf = "CHF"
        case nzd = "NZD"
        case kpw = "KPW"
        case uah = "UAH"
        case xof = "XOF"
        case eur = "EUR"
        case tvd = "TVD"
        case mad = "MAD"
        case mdl = "MDL"
        case omr = "OMR"
        case yer = "YER"
        case kwd = "KWD"
        case egp = "EGP"
        case ils = "ILS"
        case jod = "JOD"
        case cop = "COP"
        case mkd = "MKD"
        case qar = "QAR"
        case twd = "TWD"
        case mga = "MGA"
        case bsd = "BSD"
        case ang = "ANG"
        case sbd = "SBD"
        case shp = "SHP"
        case hnl = "HNL"
        case amd = "AMD"
        case gtq = "GTQ"
        case czk = "CZK"
        case mur = "MUR"
        case gel = "GEL"
        case php = "PHP"
        case all = "ALL"
        case jmd = "JMD"
        case rsd = "RSD"
        case clp = "CLP"
        case gyd = "GYD"
        case tzs = "TZS"
        case bdt = "BDT"
        case dop = "DOP"
        case krw = "KRW"
        case bbd = "BBD"
        case ngn = "NGN"
        case bhd = "BHD"
        case kid = "KID"
        case stn = "STN"
        case cny = "CNY"
        case kes = "KES"
        case mvr = "MVR"
        case bnd = "BND"
        case sgd = "SGD"
        case gnf = "GNF"
        case mop = "MOP"
        case ern = "ERN"
        case sek = "SEK"
        case ghs = "GHS"
        case dkk = "DKK"
        case bgn = "BGN"
        case bwp = "BWP"
        case irr = "IRR"
        case bob = "BOB"
        case byn = "BYN"
        case bmd = "BMD"
        case kzt = "KZT"
        case lak = "LAK"
        case uzs = "UZS"
        case myr = "MYR"
        case isk = "ISK"
        case pyg = "PYG"
        case brl = "BRL"
        case etb = "ETB"
        case huf = "HUF"
        case sdg = "SDG"
        case sos = "SOS"
        case aoa = "AOA"
        case sar = "SAR"
        case zwl = "ZWL"
        case ves = "VES"
        case gmd = "GMD"
        case bzd = "BZD"
        case dzd = "DZD"
        case mru = "MRU"
        case syp = "SYP"
        case jpy = "JPY"
        case rub = "RUB"
        case lsl = "LSL"
        case tnd = "TND"
        case awg = "AWG"
        case hrk = "HRK"
        case afn = "AFN"
        case sll = "SLL"
        case iqd = "IQD"
        case kmf = "KMF"
        case vnd = "VND"
        case ckd = "CKD"
        case szl = "SZL"
        case top = "TOP"
        case ggp = "GGP"
        case nad = "NAD"
        case ttd = "TTD"
        case btn = "BTN"
        case inr = "INR"
        case hkd = "HKD"
        case ssp = "SSP"
        case tjs = "TJS"
        case ugx = "UGX"
        case wst = "WST"
        case azn = "AZN"
        case lkr = "LKR"
        case ars = "ARS"
        case htg = "HTG"
        case npr = "NPR"
        case tmt = "TMT"
        case mwk = "MWK"
        case gip = "GIP"
        case vuv = "VUV"
        case mxn = "MXN"
        case bam = "BAM"
        case ron = "RON"
        case nok = "NOK"
        case kgs = "KGS"
        case thb = "THB"
        case bif = "BIF"
        case mzn = "MZN"
        case nio = "NIO"
        case pab = "PAB"
        case pln = "PLN"
        case lyd = "LYD"
    }
}

// MARK: - Aed
struct Aed: Codable {
    let name, symbol: String?
}

// MARK: - Flags
struct Flags: Codable {
    let png: String?
    let svg: String?
}

// MARK: - Languages
struct Languages: Codable {
    let eng: String?
}

// MARK: - Name
struct Name: Codable {
    let common, official: String?
}

typealias CountryListResponse = [CountryListResponseElement]

