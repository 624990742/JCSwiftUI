//
//  AllTestContentView.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/6/23.
//

import SwiftUI

struct AllTestContentView: View {
    @State var listData = [
        ListModel.init(index: 0,nameStr: "点击视图", contentStr: "点击进行计数"),
        ListModel.init(index: 1,nameStr: "行2", contentStr: "行2内容")]
    var body: some View {
        NavigationView {
            List(listData){ item in
                NavigationLink(
                    destination: RowDetail(model: item),
                    label: {
                        ListCustomRow(model: item)
                    })
                }
        }
        }
    }


struct AllTestContentView_Previews: PreviewProvider {
    static var previews: some View {
        AllTestContentView()
    }
}
