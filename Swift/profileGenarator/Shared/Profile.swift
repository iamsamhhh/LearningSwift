//
//  Profile.swift
//  profileGenarator
//
//  Created by 谌宇轩 Sam on 2020/12/10.
//
//
//import SwiftUI
//
//struct Profile: View {
//    var type: ETypes
//
//    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
//    @State private var selectedImage: UIImage?
//    @State private var isImagePickerDisplay = false
//
//    @State private var scondSourceType: UIImagePickerController.SourceType = .photoLibrary
//    @State private var scondSelectedImage: UIImage?
//    @State private var scondIsImagePickerDisplay = false
//
//    @State private var userName = "name"
//
//    var body: some View {
//        switch type {
//        case ETypes.Type1:
//            ProfileType1(
//                         selectedImage: self.$selectedImage,
//                         sourceType: self.$sourceType,
//                         isImagePickerDisplay: self.$isImagePickerDisplay,
//                         scondSelectedImage: self.$scondSelectedImage,
//                         scondIsImagePickerDisplay: self.$scondIsImagePickerDisplay,
//                         userName: self.$userName
//            )
//
//        case ETypes.Type2:
//            Text("t")
//                .sheet(isPresented: self.$isImagePickerDisplay) {
//                    ImagePickerView(selectedImage: self.$selectedImage,sourceType: self.sourceType)
//                }
//        }
//
//    }
//}
//
//struct Profile_Previews: PreviewProvider {
//    static var previews: some View {
//        Profile(type: .Type1)
//    }
//}
//
//struct ProfileType1: View {
//    @Binding var selectedImage: UIImage?
//    @Binding var sourceType: UIImagePickerController.SourceType
//    @Binding var isImagePickerDisplay: Bool
//
//    @Binding var scondSelectedImage: UIImage?
//    @Binding var scondIsImagePickerDisplay: Bool
//    @Binding var userName: String
//
//    var body: some View{
//        VStack {
//            if scondSelectedImage != nil{
//                VStack {
//                    Image("dune")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 1000, height: 1000, alignment: .bottom)
//
//
//                }.frame(width: 100, height: 10, alignment: .center)
//            }
//            else{
//                Button("photo"){
//                    self.sourceType = .photoLibrary
//                    self.scondIsImagePickerDisplay.toggle()
//                }
//                .sheet(isPresented: self.$scondIsImagePickerDisplay) {
//                    ImagePickerView(selectedImage: self.$scondSelectedImage,sourceType: self.sourceType)
//                }
//            }
//
//            HStack {
//                if selectedImage != nil{
//                    Image(uiImage: selectedImage!)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .clipShape(Circle())
//                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
//                        .shadow(radius: 10)
//                        .frame(width: 500, height: 500)
//                        .offset(x: 100, y: 0)
//                        .padding(.leading, -150)
//                }
//                else{
//                    Button("photo"){
//                        self.sourceType = .photoLibrary
//                        self.isImagePickerDisplay.toggle()
//                    }
//                    .sheet(isPresented: self.$isImagePickerDisplay){
//                        ImagePickerView(selectedImage: self.$selectedImage, sourceType: self.sourceType)
//                    }
//                }
//
//                Text("Samsam")
//                Spacer()
//            }.offset(x: 0, y: 130)
//            Spacer()
//
////                    }
////                    TextField("Placeholder", text: self.$userName).padding()
////                }
////
////                if scondSelectedImage == nil{
////                    Button("photo") {
////                        self.scondSourceType = .photoLibrary
////                        self.scondIsImagePickerDisplay.toggle()
////                    }
////
////                }
////            }
////            Spacer()
//        }
//    }
//}
