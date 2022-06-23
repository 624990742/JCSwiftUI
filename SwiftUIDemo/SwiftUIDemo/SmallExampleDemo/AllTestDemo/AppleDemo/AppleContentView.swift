//
//  AppleContentView.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/28.
//

import SwiftUI

struct AppleContentView: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 10, content: {
            
            Image("fengjing1")
                .fixedSize()
                .position(x: 0, y: 0)
                .frame(width: 200, height: 200)
                .border(Color.green, width: 1)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.green, lineWidth: 5)
                 }
                .shadow(color: .yellow, radius: 10, x: 3, y: 5)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            Text("你好, 码农晨仔!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .multilineTextAlignment(.center)
                .lineLimit(9)
                .padding(.all, 10)
                .background(.yellow)
            HStack {
                Text("晨仔出品")
                    .font(.subheadline)
                    .foregroundColor(.blue)
//                Spacer(minLength: 10)
                Text("玩一玩")
            }
            .padding()
            .background(.red)
        })
    }
}

struct AppleContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppleContentView()
    }
}
