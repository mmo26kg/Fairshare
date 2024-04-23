//
//  GroupModel.swift
//  Fairshare
//
//  Created by Nguyễn Đức on 21/4/24.
//

import Foundation
import SwiftUI

enum Currency {
    case usd
    case eur
    case gbp
    // Thêm các loại tiền tệ khác nếu cần
}

struct Group {
    var name: String
    var avatar: Image?
    var currency: Currency?

    init(name: String, currency: Currency? = nil, avatar: Image? = nil) {
        self.name = name
        self.currency = currency
        self.avatar = avatar
    }
}


struct MockupData {
    static let groups: [Group] = [
        Group(name: "Nhóm A", currency: .usd),
        Group(name: "Nhóm B", currency: .eur),
        Group(name: "Nhóm C", currency: .gbp),
        Group(name: "Nhóm D", currency: .usd),
        Group(name: "Nhóm E", currency: .eur),
        Group(name: "Nhóm F", currency: .gbp)
    ]
}
