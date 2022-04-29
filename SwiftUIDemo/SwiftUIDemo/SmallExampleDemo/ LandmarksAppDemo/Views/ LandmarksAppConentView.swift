//
//  LandmarksAppConentView.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/29.
//

import SwiftUI


struct LandmarksAppConentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct LandmarksAppConentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksAppConentView()
            .environmentObject(ModelData())
    }
}
