//
//  Image+CircularImage.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import SwiftUI

// MARK: - Image Extensions
extension Image {
  // Make image circular with border
  func circularImage(size: CGFloat, borderColor: Color = .white, borderWidth: CGFloat = 2) -> some View {
    self
      .resizable()
      .aspectRatio(contentMode: .fill)
      .frame(width: size, height: size)
      .clipShape(Circle())
      .overlay(
        Circle()
          .stroke(borderColor, lineWidth: borderWidth)
      )
  }
}
