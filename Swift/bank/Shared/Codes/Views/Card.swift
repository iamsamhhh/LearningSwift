//
//  Card.swift
//  bank
//
//  Created by 谌宇轩 Sam on 2021/2/26.
//

import SwiftUI

struct Card: View {
//    let pos: Int
    @State var card: CardInfo = CardInfo(cardName: "hh", describe: "hh", initMoney: 10, cardColor: Color(.blue))
    var body: some View {
//        hhhht.append {
//            reset()
//        }

        return ZStack {
            
            HStack {
                VStack {
                    Text(card.cardName)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding([.top, .leading, .bottom])
                    
                    Text(card.describe)
                        .font(.footnote)
                        .padding([.leading, .bottom])
                }
                Spacer()
                VStack {
                    Text("余额:")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                    Text(moneyToString(money: card.initMoney))
                        .font(.largeTitle)
                        .multilineTextAlignment(.leading)
                }
                Spacer()
            }
            .frame(height: 150.0)
            .background(card.cardColor)
            .cornerRadius(20)
        }
        .padding(.horizontal, 15)
        .gesture(AddGesture())
    }
    func AddGesture() -> some Gesture{
        return DragGesture()
            .onEnded {_ in
                addMoney(count: 20, info: "vfd", card: &card)
            }
        
    }
//    public func reset(){
//        card = cardInfoTestData[pos]
//    }
}



struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card().shadow(radius: 10)
    }
}
