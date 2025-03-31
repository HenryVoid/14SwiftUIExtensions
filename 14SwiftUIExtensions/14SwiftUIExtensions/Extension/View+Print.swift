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

// example
struct PrintExampleView: View {
    let maka: String = "maka"
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
            
            Print(maka, "0")
            // maka
            // 0
        }
    }
}


#Preview {
    ProjectSwiftUITests()
}
