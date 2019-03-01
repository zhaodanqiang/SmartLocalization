//
//  LocaliationSpec.swift
//  SmartLocalizationTests
//
//  Created by Danqiang_Zhao on 3/1/19.
//  Copyright © 2019 Danqiang_Zhao. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import SmartLocalization

class LocaliationSpec: QuickSpec {
    
    override func spec() {
        describe("Localiation") {
            var subject: Localization = Localization.shared
            context("date format") {
                it("should have chinese date format") {
                    expect(subject.getDateFormat(.China)).to(equal("yyyy-M-d"))
                }
            }
            
            context("language code") {
                it("should have chinese language code") {
                    expect(subject.getLanguage(.China)).to(equal("zh_CN"))
                }
            }
        }
    }
}
