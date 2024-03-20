//
//  Coordinator.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

protocol Coordinator {
  func start()
}

extension Coordinator {
  func coordinate(to coordinator: Coordinator) {
//    coordinator.parent = self
    coordinator.start()
  }
}
