//
//  AppleAllContentView.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/28.
//

import SwiftUI

struct AppleAllContentView: View {
    var body: some View {
        VStack {
            MapView()
              .ignoresSafeArea(edges: .top)
              .frame(height: 300)
            
            AppleCircleImageView()
            .offset(y: -130)
            .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text("码农晨仔")
                    .font(.title)
                    .foregroundColor(.red)
                
                HStack(alignment: .center){
                    Text("About Turtle Rock")
                        .font(.title2)
                    Spacer()
                    Text("Descriptive text goes here.")
                       
                }
                
                 .font(.subheadline)
                 .foregroundColor(.secondary)
                  Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                    Text("Descriptive text goes here.")
            }
            
          
            .padding()
            Spacer()
        }
    }
}
struct AppleAllContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppleAllContentView()
    }
}
