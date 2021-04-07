//
//  CardInfo.swift
//  bank
//
//  Created by 谌宇轩 Sam on 2021/2/26.
//

import SwiftUI

struct CardInfoView: View {
    let pos: Int
    @State var cardInfo: CardInfo = CardInfo(cardName: "The M3 Card", describe: "Use for some reson", initMoney: 8000, cardColor: .purple)
    var body: some View {
        hhhht.append {
            reset()
        }
        return VStack {
            Text("余额: \(moneyToString(money: cardInfo.initMoney))")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 50.0)
            Text("描述: \(cardInfo.describe)")
                .font(.subheadline)
                .padding(.top)
            List(cardInfo.tradeCount) { item in
                NavigationLink(destination: Text("Destination")){
                    HStack {
                        Text(item.date)
                        Spacer()
                        Text("\(item.money)")
                    }
                }
            }
        }
        .navigationBarTitle(cardInfo.cardName)
        
        
    }
    public func reset(){
        cardInfo = cardInfoTestData[pos]
    }
}

struct CardInfo_Previews: PreviewProvider {
    static var previews: some View {
        CardInfoView(pos: 0, cardInfo: CardInfo(cardName: "The M3 Card", describe: "Use for some reson", initMoney: 8000, cardColor: .purple))
    }
}
