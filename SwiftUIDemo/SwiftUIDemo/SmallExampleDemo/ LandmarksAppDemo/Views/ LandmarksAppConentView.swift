//
//  LandmarksAppConentView.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/29.
//

import SwiftUI


struct LandmarksAppConentView: View {
    @State private var selection: Tab = .featured
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
                CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)

            LandmarkList()
               .tabItem {
                 Label("List", systemImage: "list.bullet")
                }
               .tag(Tab.list)
            }
    }
}

struct LandmarksAppConentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksAppConentView()
            .environmentObject(ModelData())
    }
}
