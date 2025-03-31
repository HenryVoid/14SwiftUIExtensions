//
//  Color+.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import SwiftUI

public extension Color {
  // MARK: Category: Primary Color
  
  static var primary: Color {
    return Color(SC.primary_blue.rawValue)
  }
}

typealias SC = StringConstant
enum StringConstant: String {
  // MARK: - Colors String
  case primary_blue
}

// Example
struct FillButton: View {
  @State var textButton: String?
  var onTapAction: () -> Void
  
  var body: some View {
    Button {
      onTapAction()
    } label: {
      Text(textButton ?? "")
        .foregroundColor(.primary) // This using the Color extention
    }
  }
}
