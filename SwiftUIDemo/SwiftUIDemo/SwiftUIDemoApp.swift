//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/4/28.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    var body: some Scene {
        WindowGroup {
         ///1.垂直布局
         ///VStackContentView()
         ///2.水平布局
         ///HStackContentView()
         ///3.ZStack 布局研究
         ///ZStackContentView()
         ///4.官方案例
            AppleContentView()
        }
    }
}
