//
//  View+CustomShadow.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import SwiftUI

extension View {
  func customShadow(color: Color = .black, radius: CGFloat = 10, x: CGFloat = 0, y: CGFloat = 0, opacity: Double = 0.3) -> some View {
    self.shadow(color: color.opacity(opacity), radius: radius, x: x, y: y)
  }
}

struct CustomShadowExampleView: View {
  let maka: String = "maka"
  var body: some View {
    VStack(alignment: .center) {
      Text("Hello, World!")
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(20, corners: [.topLeft, .bottomRight])
      // here how to use
        .customShadow(color: .gray, radius: 5, x: 5, y: 5, opacity: 0.5)
      
    }
  }
}
