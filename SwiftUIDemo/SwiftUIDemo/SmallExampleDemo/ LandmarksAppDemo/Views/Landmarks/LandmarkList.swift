//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/29.

import SwiftUI
struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                 }
               }
            .navigationTitle("码农晨仔出品")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(leading:Button("左侧按钮") {
                                      print("点击了左侧")
                                },
                                trailing: Button("右侧按钮") {
                                  print("点击右侧了")
                                  })
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}

