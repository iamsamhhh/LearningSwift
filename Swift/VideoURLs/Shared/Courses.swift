//
//  Courses.swift
//  VideoURLs
//
//  Created by 谌宇轩 Sam on 2020/12/19.
//

import SwiftUI

struct Courses: Identifiable {
    let id = UUID()
    var title: String
    var imageName: String
    var bgColor: Color
    var shadowColor: Color
    var opacity: Double
    var usingSystemImage: Bool
    var imageColor: Color
    var URL: String
}

let courseTestData = [
    Courses(title: "Make a app with SwiftUI", imageName: "swift", bgColor: Color("SPurple"), shadowColor: Color("SPurple"), opacity: 0.3, usingSystemImage: true, imageColor: Color("SBlue"), URL: "bilibili.com"),
    Courses(title: "C# Progrmming Language", imageName: "C#", bgColor: Color("SOrange"), shadowColor: Color("SOrange"), opacity: 0.3, usingSystemImage: false, imageColor: .yellow, URL: "gtrs"),
    Courses(title: "May", imageName: "photo", bgColor: .black, shadowColor: .black, opacity: 0.3, usingSystemImage: true, imageColor: .gray, URL: "terwhtr")
]
