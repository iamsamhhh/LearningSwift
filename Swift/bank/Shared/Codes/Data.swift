//
//  Data.swift
//  bank
//
//  Created by 谌宇轩 Sam on 2021/2/18.
//

import Foundation
import SwiftUI

public struct CardInfo: Identifiable{
    public let id = UUID()
    var cardName: String
    var describe: String
    var initMoney: Double
    var cardColor: Color
    var tradeCount: [TradeInfo] = []
}

public struct TradeInfo: Identifiable{
    public let id = UUID()
    var date: String
    var money: Double
    var information: String
}

public var cardInfoTestData: [CardInfo] = []

