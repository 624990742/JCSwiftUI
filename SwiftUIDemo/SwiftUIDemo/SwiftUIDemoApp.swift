//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/28.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            LandmarksAppConentView().environmentObject(modelData)
        }
    }
}
