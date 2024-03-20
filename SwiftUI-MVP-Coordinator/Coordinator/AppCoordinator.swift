//
//  AppCoordinator.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

final class AppCoordinator: Coordinator {
  typealias P = AppCoordinator
  
  private weak var window: UIWindow?
  
  init(window: UIWindow) {
    self.window = window
  }
  
  @discardableResult
  func start() -> some View {
    let coordinator = RootMasterCoordinator<AppCoordinator>(window: window)
    return coordinate(to: coordinator)
  }
}
