//
//  Coordinator.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

protocol Coordinator {
  associatedtype U: View
  func start() -> U
}

extension Coordinator {
  func coordinate<T: Coordinator>(to coordinator: T) -> some View {
    return coordinator.start()
  }
}
