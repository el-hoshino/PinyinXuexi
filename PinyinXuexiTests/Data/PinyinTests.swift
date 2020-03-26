//
//  PinyinTests.swift
//  PinyinXuexiTests
//
//  Created by 史 翔新 on 2020/03/27.
//  Copyright © 2020 Crazism. All rights reserved.
//

import XCTest
@testable import PinyinXuexi

class PinyinTests: XCTestCase {

    func testToneDisplay() {
        
        let allTones = Pinyin.Final.Tone.allCases
        
        XCTContext.runActivity(named: "Individual Display") { _ in
            for tone in allTones {
                let individual = tone.individualDisplay
                XCTAssertEqual(individual, tone.individual)
            }
        }
        
        XCTContext.runActivity(named: "Combined with a") { _ in
            for tone in allTones {
                let combined = "a\(tone.combinationDisplay)"
                XCTAssertEqual(combined, tone.combinedWithA)
            }
        }
        
        XCTContext.runActivity(named: "Combined with i") { _ in
            for tone in allTones {
                let combined = "i\(tone.combinationDisplay)"
                XCTAssertEqual(combined, tone.combinedWithI)
            }
        }
        
        XCTContext.runActivity(named: "Combined with ü") { _ in
            for tone in allTones {
                let combined = "ü\(tone.combinationDisplay)"
                XCTAssertEqual(combined, tone.combinedWithÜ)
            }
        }
        
    }

}

private extension Pinyin.Final.Tone {
    
    var individual: String {
        switch self {
        case .high:     return "ˉ"
        case .rising:   return "ˊ"
        case .low:      return "ˇ"
        case .falling:  return "ˋ"
        case .neutral:  return ""
        }
    }
    
    var combinedWithA: String {
        switch self {
        case .high:     return "ā"
        case .rising:   return "á"
        case .low:      return "ǎ"
        case .falling:  return "à"
        case .neutral:  return "a"
        }
    }
    
    var combinedWithI: String {
        switch self {
        case .high:     return "ī"
        case .rising:   return "í"
        case .low:      return "ǐ"
        case .falling:  return "ì"
        case .neutral:  return "i"
        }
    }
    
    var combinedWithÜ: String {
        switch self {
        case .high:     return "ǖ"
        case .rising:   return "ǘ"
        case .low:      return "ǚ"
        case .falling:  return "ǜ"
        case .neutral:  return "ü"
        }
    }
    
}
