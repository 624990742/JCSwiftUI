//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/29.

import SwiftUI
struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
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
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
