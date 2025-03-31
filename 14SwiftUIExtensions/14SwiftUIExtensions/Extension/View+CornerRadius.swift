//
//  View+CornerRadius.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import SwiftUI

extension View {
  func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
    clipShape(RoundedCorner(radius: radius, corners: corners))
  }
}

struct RoundedCorner: Shape {
  var radius: CGFloat = .infinity
  var corners: UIRectCorner = .allCorners
  
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    return Path(path.cgPath)
  }
}

struct CornerRadiusExampleView: View {
  let maka: String = "maka"
  var body: some View {
    VStack(alignment: .leading) {
      Text("Hello, World!")
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(20, corners: [.topLeft, .bottomRight]) // here how to use
      
      Print(maka, "0")
    }
  }
}
