//
//  ContentView.swift
//  Shared
//
//  Created by 谌宇轩 Sam on 2020/12/10.
//
import UIKit
import SwiftUI

struct ContentView: View {
    @State var isSheetOpen = false
    @State var image : UIImage?
    
    var which = false
    @State var secondImage : UIImage?
    
    var body: some View {
        VStack{
            
            if image == nil {
                Image("dune")
                    .clipShape(Rectangle())
//                    .resizable()
//                    .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 200, idealHeight: 200, maxHeight: 300, alignment: .top)
                
                Button("photo") {
                    isSheetOpen.toggle()
                    
                }
            } else {
                Image(uiImage: image!)
                    .resizable()
                    .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 200, idealHeight: 200, maxHeight: 300, alignment: .top)
            }
            
            if secondImage == nil{
                
                
            }
            
            Spacer()
        }
        .ignoresSafeArea(.all)
        .sheet(isPresented: self.$isSheetOpen, content: {
            ImagePickerView(selectedImage: self.$image, sourceType: .photoLibrary)
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
