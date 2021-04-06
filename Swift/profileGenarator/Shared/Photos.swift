//
//  Photos.swift
//  profileGenarator
//
//  Created by 谌宇轩 Sam on 2020/12/10.
//

import SwiftUI



struct Photos: View {
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    var body: some View {
        VStack{
            if selectedImage != nil{
                
            }
        }
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
