//
//  MasterCoordinator.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

protocol MasterCoordinator: Coordinator {} // empty for now

extension MasterCoordinator {
  func presentDetailView1(isPresented: Binding<Bool>) -> some View {
      // here we decide here to which coordinator we'd like to navigate to
      let coordinator = NavigationDetailCoordinator(isPresented: isPresented)
      return coordinate(to: coordinator)
  }

  func presentDetailView2(isPresented: Binding<Bool>) -> some View {
      // here we decide here to which coordinator we'd like to navigate to
      let coordinator = AnotherNewCoordinator(isPresented: isPresented)
      return coordinate(to: coordinator)
  }
}
