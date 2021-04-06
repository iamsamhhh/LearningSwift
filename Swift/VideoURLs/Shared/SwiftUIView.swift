//
//  SwiftUIView.swift
//  VideoURLs
//
//  Created by 谌宇轩 Sam on 2020/12/19.
//

import SwiftUI
struct SwiftUIView: View {
    
    @Binding var uRL: String
    
    var body: some View {
        return VStack {
            Button(self.uRL) {
                
            }
            .foregroundColor(.blue)
            
        }
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    
    static var previews: some View {
//        Text("hello")
        SwiftUIView(uRL: .constant("example.com"))
    }
}
