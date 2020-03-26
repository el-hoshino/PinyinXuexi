//
//  Pinyin.swift
//  PinyinXuexi
//
//  Created by 史 翔新 on 2020/03/27.
//  Copyright © 2020 Crazism. All rights reserved.
//

enum Pinyin {
    
    enum Initial: CaseIterable {
        case b, p, m, f, d, t, n, l
        case g, k, h, j, q, x
        case zh, ch, sh, r, z, c, s
        case y, w
    }
    
    enum Final: CaseIterable {
        
        enum Tone: CaseIterable {
            case high // ˉ
            case rising // ˊ
            case low // ˇ
            case falling // ˋ
            case neutral // no
        }
        
        case a, o, e, i, u, ü
        case ai, ei, ui, ao, ou, iu, ie, üe, er
        case an, en, `in`, un, ün
        case ang, eng, ing, ong
        
    }
    
    case initial(Initial)
    case final(Final, Final.Tone?)
    
    static func final(_ final: Final) -> Pinyin {
        return .final(final, nil)
    }
    
}

extension Pinyin.Final.Tone {
    
    var individualDisplay: String {
        switch self {
        case .high:     return "ˉ"
        case .rising:   return "ˊ"
        case .low:      return "ˇ"
        case .falling:  return "ˋ"
        case .neutral:  return ""
        }
    }
    
    var combinationDisplay: String {
        switch self {
        case .high:     return "\u{0304}"
        case .rising:   return "\u{0301}"
        case .low:      return "\u{030c}"
        case .falling:  return "\u{0300}"
        case .neutral:  return ""
        }
    }
    
}
