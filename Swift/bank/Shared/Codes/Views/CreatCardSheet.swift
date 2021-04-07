//
//  CardInfoSheet.swift
//  bank
//
//  Created by 谌宇轩 Sam on 2021/2/19.
//

import SwiftUI

struct CreatCardSheet: View {
    @State var name = ""
    @State var describe = ""
    @State var isEditing = false
    @State var money = 0.0
    @State var color = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    var body: some View {
        
        VStack {
            CreatCard(name: $name, describe: $describe, isEditing: $isEditing, color: $color, money: $money)
        }
        
    }
}

struct CardInfoSheet_Previews: PreviewProvider {
    static var previews: some View {
        CreatCardSheet()
    }
}

struct CreatCard: View {
    @Binding var name: String
    @Binding var describe: String
    @Binding var isEditing: Bool
    @Binding var color: Color
    @Binding var money: Double
    @State var value001: Int = 0
    @State var value01: Int = 0
    @State var value1: Int = 0
    @State var value10: Int = 0
    @State var value100: Int = 0
    @State var value1000: Int = 0
    @State var value10000: Int = 0
    @State var value100000: Int = 0
    
    func h() -> Double {
        let value = (value100000 * 100000) + (value10000 * 10000) + (value1000 * 1000) + (value100 * 100) + (value10 * 10) + value1
        let val = (Double(value01) * 0.1) + (Double(value001) * 0.01)
        money = Double(value) + val
        return (Double(value) + val)
    }
    
    var body: some View {
        VStack {
            Text(name)
            TextField("name", text: self.$name) { isEditing in
                self.isEditing = isEditing
            } onCommit: {
                
            }
            .padding(.all)
            
            Text(describe)
            TextField("describe", text: self.$describe) { isEditing in
                self.isEditing = isEditing
            } onCommit: {
                
            }
            .padding(.all)
            VStack{
                
                Stepper(value: $value100000, in: 0...9) {
                    Text("十万\(value100000)")
                }
                .padding(.horizontal)
                Stepper(value: $value10000, in: 0...9) {
                    Text("万\(value10000)")
                }
                .padding(.horizontal)
                Stepper(value: $value1000, in: 0...9) {
                    Text("千\(value1000)")
                }
                .padding(.horizontal)
                Stepper(value: $value100, in: 0...9) {
                    Text("百\(value100)")
                }
                .padding(.horizontal)
                Stepper(value: $value10, in: 0...9) {
                    Text("十\(value10)")
                }
                .padding(.horizontal)
                Stepper(value: $value1, in: 0...9) {
                    Text("个\(value1)")
                }
                .padding(.horizontal)
                Stepper(value: $value01, in: 0...9) {
                    Text("毛\(value01)")
                }
                .padding(.horizontal)
                Stepper(value: self.$value001, in: 0...9) {
                    Text("分\(self.value001)")
                }
                .padding(.horizontal)
                
                Text(moneyToString(money: h()))
            }
            ColorPicker("Card color", selection: $color)
                .padding(.all)
        }
    }
}
