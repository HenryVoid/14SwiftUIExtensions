//
//  Font+.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import SwiftUI

public extension SwiftUI.Font {
  static let interSemiBold = SwiftUI.Font.custom("Inter-SemiBold", size: 36)
  static let impactRegular = SwiftUI.Font.custom("Impact", size: 24)
}

// Example
struct FontExampleView: View {
  var body: some View {
    VStack(alignment: .center) {
      Text("Hello, World!")
        .font(.interSemiBold)
        .foregroundColor(.black)
      
      Text("Hello, Moon!")
        .font(.impactRegular)
        .foregroundColor(.black)
    }
  }
}
