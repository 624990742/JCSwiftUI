//
//  TapMe.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/6/23.
//

import SwiftUI
struct TapMeContenView: View {
    @State var counter = 0
    var body: some View {
        VStack {
            Button(action: {self.counter += 1}, label:{
                Text("点我就给你变数！")
                .padding()
                .background(Color(.secondarySystemFill))
                .cornerRadius(5)
            })
            if counter > 0 {
            Text("您点击的次数 \(counter)")
            } else {
            Text("您未点击！")
            }
        }
    }
}

struct TapMe_Previews: PreviewProvider {
    static var previews: some View {
        TapMeContenView()
    }
}
