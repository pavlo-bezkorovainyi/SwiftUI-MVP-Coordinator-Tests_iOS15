//
//  AppCoordinator.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

final class AppCoordinator: Coordinator {
  private weak var window: UIWindow?
  
  init(window: UIWindow) {
    self.window = window
  }
  
  func start() {
    let coordinator = RootMasterCoordinator(window: window)
    coordinate(to: coordinator)
  }
}
