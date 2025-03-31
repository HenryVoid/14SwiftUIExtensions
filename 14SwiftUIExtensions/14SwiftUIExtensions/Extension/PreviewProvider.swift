//
//  PreviewProvider.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import SwiftUI

extension PreviewProvider {
  static var previewDevices: [String] {
    ["iPhone 15 Pro", "iPhone SE (3rd generation)", "iPad Pro (12.9-inch)"]
  }
  
  static var previewDisplayModes: [ColorScheme] {
    [.light, .dark]
  }
  
  static func devicePreview<V: View>(_ view: V) -> some View {
    ForEach(previewDevices, id: \.self) { device in
      ForEach(previewDisplayModes, id: \.self) { scheme in
        view
          .previewDevice(PreviewDevice(rawValue: device))
          .previewDisplayName("\(device) - \(scheme)")
          .preferredColorScheme(scheme)
      }
    }
  }
}

// example
struct ProviderExample_previews: PreviewProvider {
  static var previews: some View {
    devicePreview(FontExampleView())
  }
}
