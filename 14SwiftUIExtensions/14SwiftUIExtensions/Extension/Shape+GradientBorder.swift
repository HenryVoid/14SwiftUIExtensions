//
//  Shape+GradientBorder.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import SwiftUI

public extension Shape {
  func gradientBorder(colors: [Color], width: CGFloat = 2) -> some View {
    self.overlay(
      self.stroke(
        LinearGradient(
          gradient: .init(colors: colors),
          startPoint: .topLeading,
          endPoint: .bottomTrailing
        ),
        lineWidth: width
      )
    )
  }
}
