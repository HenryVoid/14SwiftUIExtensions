//
//  GeometryProxy+.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import SwiftUI

extension GeometryProxy {
  // center
  var center: CGPoint {
    CGPoint(x: size.width / 2, y: size.height / 2)
  }
  
  // helper for responsive sizing
  func responsiveWidth(_ percentage: CGFloat) -> CGFloat {
    size.width * percentage
  }
  
  func responsiveHeight(_ percentage: CGFloat) -> CGFloat {
    size.height * percentage
  }
}

struct GeometryProxyExampleView: View {
  
  var body: some View {
    GeometryReader { geometry in
      VStack {
        Circle()
          .frame(width: 50, height: 50)
          .position(geometry.center)
      }
    }
  }
}
