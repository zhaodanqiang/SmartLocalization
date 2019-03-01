//
//  CreateLocalizationData.swift
//  SmartLocalization
//
//  Created by Danqiang_Zhao on 2/28/19.
//  Copyright © 2019 Danqiang_Zhao. All rights reserved.
//

import Foundation
import HandyJSON

class CreateLocalizationData {
    var countryList: [Country] = []
    init() {
        let urlPath = Bundle.main.path(forResource: "country_list", ofType: "json")!
        do {
            let string = try String(contentsOfFile: urlPath)
            let countryOject = CountryList.deserialize(from: string)
            self.countryList = countryOject!.countryList
//            for country in countryList!.countryList {
//                print("case \(country.name.replace(target: " ", withString: "_")) = \"\(country.code)\"")
//            }
        } catch let error {
            print(error)
        }
    }
}



struct CountryList: HandyJSON {
    var countryList: [Country] = []
}

struct Country: HandyJSON {
    var code: String = ""
    var name: String = ""
    var lang: String = ""
    var language: String = ""
    var dateFormat: String = ""
}

extension String {
    func replace(target: String, withString: String) -> String {
        return self.replacingOccurrences(of: target, with: withString)
    }
}
