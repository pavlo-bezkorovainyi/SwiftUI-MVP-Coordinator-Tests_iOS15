//
//  MasterPresenter+Protocol.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

protocol MasterPresenting: ObservableObject { // Notice conformance to ObservableObject
  associatedtype V1: View
  associatedtype V2: View
  var viewModel: MasterViewModel { get }
  func onButtonPressed1(isPresented: Binding<Bool>) -> V1
  func onButtonPressed2(isPresented: Binding<Bool>) -> V2
}

final class MasterPresenter<C: MasterCoordinator>: MasterPresenting {
  @Published private(set) var viewModel: MasterViewModel
  
  private let coordinator: MasterCoordinator
  
  init(coordinator: MasterCoordinator) {
    self.coordinator = coordinator
    self.viewModel = MasterViewModel(date: Date())
  }
  
  func onButtonPressed1(isPresented: Binding<Bool>) -> some View {
    return coordinator.presentDetailView1(isPresented: isPresented)
  }
  
  func onButtonPressed2(isPresented: Binding<Bool>) -> some View {
    return coordinator.presentDetailView2(isPresented: isPresented)
  }
}
