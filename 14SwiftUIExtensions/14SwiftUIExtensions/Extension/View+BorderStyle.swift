//
//  View+BorderStyle.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import SwiftUI

extension View {
  func borderStyle(width: CGFloat = 1, color: Color = .gray) -> some View {
    self.overlay(
      RoundedRectangle(cornerRadius: 8)
        .stroke(color, lineWidth: width)
    )
  }
}

struct BorderStyleExampleView: View {
  let maka: String = "maka"
  var body: some View {
    VStack(alignment: .center) {
      Text("Hello, World!")
        .padding()
        .borderStyle(width: 8, color: .blue) // Using custom border style
    }
  }
}
