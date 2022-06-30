//
//  View.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/6/24.
//

import SwiftUI
extension View {
    func debug() -> Self {
        print(Mirror(reflecting: self).subjectType)
        return self
    }
}
