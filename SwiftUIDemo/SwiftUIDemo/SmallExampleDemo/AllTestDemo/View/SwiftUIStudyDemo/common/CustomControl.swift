//
//  CustomControl.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/6/23.
//

import SwiftUI
struct ListCustomRow: View {
    var model: ListModel
    var body: some View {
        VStack(alignment: .leading) {
            Text(model.name)
                .font(.headline)
                .foregroundColor(.black)
            Text(model.content)
                .font(.subheadline)
                    .foregroundColor(.black)
        }
    }
}


struct RowDetail: View {
    var model: ListModel
    var body: some View {
        if model.index == 0 {
            TapMeContenView()
            .navigationTitle("点击视图")
        }else{
            VStack {
                Text("当前内容为：\(model.content)")
            }
            .navigationTitle("第\(model.index)页")
        }
    }
    
}
