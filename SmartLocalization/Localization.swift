//
//  Localization.swift
//  SmartLocalization
//
//  Created by Danqiang_Zhao on 3/1/19.
//  Copyright © 2019 Danqiang_Zhao. All rights reserved.
//

import Foundation

public class Localization {
    static let shared = Localization()
    var countryDic: [String: Country] = [:]
    private init() {
        let createLocalizationData = CreateLocalizationData()
        for country in createLocalizationData.countryList {
            countryDic[country.code] = country
        }
    }
    
    func getDateFormat(_ countryEnum: LocalizationEnum) -> String? {
        return countryDic[countryEnum.rawValue]?.dateFormat
    }
    
    func getLanguage(_ countryEnum: LocalizationEnum) -> String? {
        if let lang = countryDic[countryEnum.rawValue]?.lang,
        let code = countryDic[countryEnum.rawValue]?.code
        {
            return lang + "_" + code
        }
        return ""
    }
}
