//
//  PinyinView.swift
//  PinyinXuexi
//
//  Created by 史 翔新 on 2020/03/26.
//  Copyright © 2020 Crazism. All rights reserved.
//

import SwiftUI

struct PinyinView: View {
    
    @State var pinyin: Pinyin
    
    var pinyinDisplay: String { "\(pinyin)" }
    
    var body: some View {
        Text(pinyinDisplay)
            .font(Font.system(size: 128))
    }
    
}

struct PinyinView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                PinyinView(pinyin: .final(.a))
            }
                .environment(\.colorScheme, .light)
            NavigationView {
                PinyinView(pinyin: .initial(.zh))
            }
                .environment(\.colorScheme, .dark)
        }
            .previewLayout(.fixed(width: 320, height: 320))

    }
}
