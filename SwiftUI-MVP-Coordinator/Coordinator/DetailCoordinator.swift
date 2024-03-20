//
//  DetailCoordinator.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

protocol DetailCoordinator: Coordinator {}

final class NavigationDetailCoordinator: DetailCoordinator {
  private var isPresented: Binding<Bool>
  
  init(isPresented: Binding<Bool>) {
    self.isPresented = isPresented
  }
  
  func start() -> some View {
    return ModalLink(isPresented: isPresented, destination: view)
    }
  }
}
