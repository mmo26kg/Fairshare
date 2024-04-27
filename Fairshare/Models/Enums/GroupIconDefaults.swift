//
//  GroupIconDefaul.swift
//  Fairshare
//
//  Created by Nguyễn Đức on 27/4/24.
//

import Foundation
import SwiftUI

struct GroupIconDefaults: Identifiable, Hashable {
    let id = UUID()
    var name: String
   
}

struct SampleGroupIconDefaul {
    static let groupIcons: [GroupIconDefaults] = [
        GroupIconDefaults(name: "house"),
        GroupIconDefaults(name: "star"),
        GroupIconDefaults(name: "menucard"),
        GroupIconDefaults(name: "cart"),
        GroupIconDefaults(name: "graduationcap"),
        GroupIconDefaults(name: "gamecontroller"),
        GroupIconDefaults(name: "car"),
        GroupIconDefaults(name: "bicycle"),
        GroupIconDefaults(name: "dumbbell"),
        GroupIconDefaults(name: "camera"),
        GroupIconDefaults(name: "stethoscope"),
        GroupIconDefaults(name: "gym.bag"),
        GroupIconDefaults(name: "storefront"),
        GroupIconDefaults(name: "dog")
    ]
}

enum GroupIconCollection: String {
    case house
    case star
    case menucard
    case cart
    case graduationcap
    case gamecontroller
    case car
    case bicycle
    case dumbbell
    case camera
    case stethoscope
    case gymBag = "gym.bag"
    case storefront
    case dog
}



