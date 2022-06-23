//
//  ZStackContentView.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/28.
/**
 ZStack 学习
 https://developer.apple.com/documentation/swiftui/zstack
 */

import SwiftUI


let colors: [Color] =
    [.red, .orange, .yellow, .green, .blue, .purple]

struct ZStackContentView: View {
    var body: some View {
        /** 案例3 */
        ZStack(alignment: .bottomLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 50)
            Rectangle()
                .fill(Color.blue)
                .frame(width:50, height: 100)
        }
        .border(Color.green, width: 10)
        

        
        /*
         案例2
        ZStack {
            ForEach(0..<colors.count){
                Circle()///圆  长方形使用 Rectangle()
                .fill(colors[$0])
                .frame(width: 100, height: 100)
                .offset(x: CGFloat($0) * 10.0,
                y: CGFloat($0) * 15.0)
            }
        } */
        
        
        
        /*
        案例1
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(width: 200, height: 200)

            RoundedRectangle(cornerRadius: 10)
                .fill(Color.green)
                .frame(width: 80, height: 80)
        }*/
   }
}

struct ZStackContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackContentView()
    }
}
