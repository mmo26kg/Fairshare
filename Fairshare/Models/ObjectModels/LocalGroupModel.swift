//
//  GroupModel.swift
//  Fairshare
//
//  Created by Nguyễn Đức on 21/4/24.
//

import Foundation
import SwiftUI
import SwiftData


enum Currency {
    case usd
    case eur
    case gbp
    // Thêm các loại tiền tệ khác nếu cần
}

class LocalGroup {
    let id = UUID()
    var name: String
    var avatar: Image?
    var currency: Currency?

    init(name: String, currency: Currency? = nil, avatar: Image? = nil) {
        self.name = name
        self.currency = currency
        self.avatar = avatar
    }
}



