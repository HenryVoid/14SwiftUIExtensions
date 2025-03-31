//
//  Preview+UIViewController.swift
//  14SwiftUIExtensions
//
//  Created by 송형욱 on 3/31/25.
//

import UIKit
import SwiftUI

extension UIViewController {
  struct Preview: UIViewControllerRepresentable {
    let viewController: UIViewController
    
    init(_ builder: @escaping () -> UIViewController) {
      self.viewController = builder()
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
      viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
  }
  
  func toPreview() -> some View {
    Preview { self }
  }
}

// Example
// For min iOS 13
//struct MakeViewController_Preview: PreviewProvider {
//  static var previews: some View {
//    MakeViewController()
//      .toPreview() // here how use
//      .edgesIgnoringSafeArea(.all)
//  }
//}
