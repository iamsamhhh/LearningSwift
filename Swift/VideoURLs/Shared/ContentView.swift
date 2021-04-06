//
//  ContentView.swift
//  Shared
//
//  Created by 谌宇轩 Sam on 2020/12/19.
//

import SwiftUI

struct ContentView: View {
    
    @State var courseURL: String = ""
    
    @State var isSheetPresented = false
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ForEach(courseTestData) { item in
                    
                    Button(){
                        self.courseURL = item.URL
                        isSheetPresented.toggle()
                    }
                    label: {
                        CourseCard(
                            imageName: item.imageName,
                            opacity: item.opacity,
                            usingSystemImage: item.usingSystemImage,
                            title: item.title,
                            bgColor: item.bgColor,
                            shadowColor: item.shadowColor,
                            imageColor: item.imageColor
                        ).padding(.trailing, 50)
                    }
                }
            }
            .padding(.vertical, 50)
            .padding(.leading, 30)
        }
        .sheet(isPresented: self.$isSheetPresented) {
            SwiftUIView(uRL: self.$courseURL)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

struct CourseCard: View {
   
    var imageName = "laptopcomputer.and.iphone"
    var opacity = 0.4
    var usingSystemImage = true
    var title = "SwiftUI"
    var bgColor = Color("SPurple")
    var shadowColor = Color("SPurple")
    var imageColor = Color("SBlue")
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(20)
                .lineLimit(4)
                .padding(.trailing, 50)
            
            Spacer()
            
            if usingSystemImage {
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.all, 20)
                    .frame(width: 246, height: 175)
                    .foregroundColor(imageColor)
            }
            else {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.all, 20)
                    .frame(width: 246, height: 175)
                    .colorMultiply(imageColor)
            }
            
        }
        .background(bgColor)
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: shadowColor.opacity(opacity), radius: 25)
        
    }
}
