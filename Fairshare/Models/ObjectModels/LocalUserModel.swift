//
//  UserModel.swift
//  Fairshare
//
//  Created by Nguyễn Đức on 23/4/24.
//

import Foundation
import SwiftUI
import SwiftData

class LocalUser: Identifiable {
    let id = UUID()
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


