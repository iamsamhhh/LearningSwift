//
//  ContentView.swift
//  Shared
//
//  Created by 谌宇轩 Sam on 2020/12/6.
//

import SwiftUI

struct ContentView: View {
    var types: [Types] = []
    var body: some View {
        NavigationView{
            List{
                ForEach(testData){ item in
                    TypeCell(item: item)
                }
                
                HStack {
                    Spacer()
                    Text("\(testData.count) types")
                        .foregroundColor(.secondary)
                    Spacer()
                }
                    
            }
            .navigationTitle("view")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(types: testData)
    }
}

struct TypeCell: View {
    var item : Types
    var body: some View {
        NavigationLink(destination: Text(item.name)){
            Image(systemName: "photo")
            VStack(alignment: .leading) {
                Text(item.name)
                Text("ing")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
