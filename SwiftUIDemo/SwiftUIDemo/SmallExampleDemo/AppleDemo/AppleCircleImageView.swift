//
//  AppleCircleImageView.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/28.
//

import SwiftUI

struct AppleCircleImageView: View {
    var body: some View {
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
    }
}

struct AppleCircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        AppleCircleImageView()
    }
}
