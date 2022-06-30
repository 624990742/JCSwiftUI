//
//  AllTestModel.swift
//  SwiftUIDemo
//
//  Created by jcmac on 2022/6/23.
//

import Foundation
class ListModel: Identifiable {
    var index: Int = 0
    var name:String = ""
    var content:String = ""
    init(index: Int,nameStr: String,contentStr: String){
        self.index = index
        name = nameStr
        content = contentStr
    }
}
