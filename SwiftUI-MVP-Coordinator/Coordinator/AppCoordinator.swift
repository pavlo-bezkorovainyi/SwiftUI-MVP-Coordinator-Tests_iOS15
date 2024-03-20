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
  
  @discardableResult // discardableResult let us avoid capturing whatever it returns
     func start() -> some View {
         let coordinator = RootMasterCoordinator(window: window)
         return coordinate(to: coordinator)
     }
}
