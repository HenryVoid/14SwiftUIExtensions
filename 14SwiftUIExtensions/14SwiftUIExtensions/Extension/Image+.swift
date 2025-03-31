//
//  Image+.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import SwiftUI

public extension Image {
  // MARK: Assets
  
  static var imageTitle: Image {
    return Image(ISC.imageTitle.rawValue)
  }
}

typealias ISC = ImageStringConstant
enum ImageStringConstant: String {
  // MARK: - Image Assets
  case imageTitle = "image_title_blue"
}

// example
struct LogoToolbarImage: View {
  // MARK: - BODY
  
  var body: some View {
    Image.imageTitle // here use the image extension
      .resizable()
      .scaledToFit()
      .frame(width: 500 - 160, height: 40, alignment: .center)
      .padding(.bottom)
  }
}
