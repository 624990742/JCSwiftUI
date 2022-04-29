//
//  HStackContentView.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/28.
/**
 HStack  水平布局
 https://developer.apple.com/documentation/swiftui/hstack/
 */

import SwiftUI


struct HStackContentView: View {
    var body: some View {
        ///案例2
        
            HStack(
                alignment: .top,
                spacing: 10
            ) {
                ForEach(
                    1...5,
                    id: \.self
                ) {
                    Text("Item \($0)")
                      
                }
            }
        /**
        案例1
         HStack {
             RoundedRectangle(cornerRadius: 10)
                 .fill(Color.yellow)
                 .frame(width: 80, height: 80)

             RoundedRectangle(cornerRadius: 10)
                 .fill(Color.red)
                 .frame(width: 80, height: 80)
         }
         
         */
   }
}

struct HStackContentView_Previews: PreviewProvider {
    static var previews: some View {
        HStackContentView()
    }
}
