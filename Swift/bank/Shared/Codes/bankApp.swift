//
//  bankApp.swift
//  Shared
//
//  Created by 谌宇轩 Sam on 2021/2/16.
//

import SwiftUI

@main
struct bankApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(cardInfo: cardInfoTestData)
        }
    }
}
