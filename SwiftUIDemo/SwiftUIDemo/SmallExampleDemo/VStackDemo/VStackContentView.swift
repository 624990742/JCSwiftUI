//
//  VStackContentView.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/28.
/**
 VStack 垂直布局
 https://developer.apple.com/documentation/swiftui/vstack/
 */

import SwiftUI

struct VStackContentView: View {
    var body: some View {
        
        /*
         案例3
         */
        VStack(
                alignment: .center,
                spacing: 10
            ) {
                ForEach(
                    1...10,
                    id: \.self
                ) {
                    Text("Item \($0)")
                }
            }
        
        /*
         案例2
         ScrollView {
             LazyVStack(alignment: .leading) {
                 ForEach(1...100, id: \.self) {
                     Text("Row \($0)")
                 }
             }
         }
         */
      
        
        /*
        案例1
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.green)
                .frame(width: 80, height: 80)

            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(width: 80, height: 80)
        }*/

    }
}

struct VStackContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStackContentView()
    }
}
