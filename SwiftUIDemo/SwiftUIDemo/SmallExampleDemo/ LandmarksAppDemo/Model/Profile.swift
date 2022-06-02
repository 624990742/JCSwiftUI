//
//  Profile.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/5/20.
//

import Foundation
import SwiftUI

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    
    enum Season: String, CaseIterable, Identifiable {
            case spring = "🌷"
            case summer = "🌞"
            case autumn = "🍂"
            case winter = "☃️"

            var id: String { rawValue }
     }
}

