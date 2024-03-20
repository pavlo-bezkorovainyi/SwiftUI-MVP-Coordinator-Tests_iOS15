//
//  MasterCoordinator.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

protocol MasterCoordinator: Coordinator {} // empty for now

extension MasterCoordinator {
  func presentDetailView(isPresented: Binding<Bool>) -> some View {
      let coordinator = NavigationDetailCoordinator<Self>(isPresented: isPresented)
      return coordinate(to: coordinator)
  }
}
