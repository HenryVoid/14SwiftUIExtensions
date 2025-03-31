//
//  View+.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import SwiftUI

extension View {
  func Print(_ vars: Any...) -> some View {
    for value in vars { print(value) }
    return EmptyView()
  }
}
