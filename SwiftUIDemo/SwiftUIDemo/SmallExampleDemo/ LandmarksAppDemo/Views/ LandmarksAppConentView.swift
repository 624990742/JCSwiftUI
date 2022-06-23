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
        case testList
    }
    
    var body: some View {
        TabView(selection: $selection) {
                CategoryHome()
                .tabItem {
                    Label("首页", systemImage: "star")
                }
                .tag(Tab.featured)

            LandmarkList()
               .tabItem {
                 Label("地标列表", systemImage: "list.bullet")
                }
               .tag(Tab.list)
            
            
            AllTestContentView()
                .tabItem {
                  Label("学习demo列表", systemImage: "list.bullet")
                 }
                .tag(Tab.testList)
            }
    }
}

struct LandmarksAppConentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksAppConentView()
            .environmentObject(ModelData())
    }
}
