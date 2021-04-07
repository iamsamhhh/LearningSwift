//
//  ContentView.swift
//  Shared
//
//  Created by 谌宇轩 Sam on 2021/2/16.
//
import Foundation
import SwiftUI

struct MainView: View {
    @State var name = ""
    @State var describe = ""
    @State var isEditing = false
    @State var color = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    @State var money: Double = 0
    @State var sheetPresent = false
    @State var cardInfo: [CardInfo]
    @State var hidden: Bool = true
    
    var body: some View {
        
//        for i in hhhht {
//            i()
//        }
        
        return NavigationView {
            VStack {
                ScrollView {
                    VStack {
                        ForEach(0 ..< cardInfo.count) { item in
                            NavigationLink(destination: CardInfoView(pos: item)){
                                Card()
                                    .foregroundColor(.black)
                                    .padding(.vertical)
                                    .shadow(color: cardInfo[item].cardColor, radius: 10)
                            }
                            
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarTitle("Wallet")
            .navigationBarItems(trailing:
                Button(action: toggle) {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 30.0, height: 30.0)
                }
            )
        }
        .sheet(isPresented: $sheetPresent, onDismiss: AddCard) {
            CreatCard(name: $name, describe: $describe, isEditing: $isEditing, color: $color, money: $money)
                
        }
    }
    func AddCard(){
        cardInfoTestData.append(CardInfo(cardName: name, describe: describe, initMoney: money, cardColor: color))
        cardInfo = cardInfoTestData
    }
    
    func toggle() {
        sheetPresent = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(cardInfo: cardInfoTestData)
    }
}
