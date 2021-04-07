//
//  PublicFunc.swift
//  bank
//
//  Created by 谌宇轩 Sam on 2021/3/11.
//

import Foundation
import SwiftUI

public func moneyToString(money: Double) -> String {
    let int = Int(money)
    let double = Int((money - Double(int)) * 100)
    return double == 0 ? ("\(int)") : ("\(int).\(double)")
}

public func addMoney(count: Double, info: String, card: inout CardInfo){
    card.initMoney += count
    card.tradeCount.append(TradeInfo(date: "\(Date())", money: count, information: info))
}

var hhhht : [() -> Void] = []
