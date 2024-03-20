//
//  RootMasterCorrdinator.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

protocol MasterCoordinator: Coordinator {} // empty for now

final class RootMasterCoordinator: MasterCoordinator {
  private weak var window: UIWindow?
  
  init(window: UIWindow?) {
    self.window = window
  }
  
  func start() {
    let view = MasterFactory.make(with: self)
    let navigation = NavigationView { view }
    let hosting = UIHostingController(rootView: navigation)
    window?.rootViewController = hosting
    window?.makeKeyAndVisible()
  }
}
