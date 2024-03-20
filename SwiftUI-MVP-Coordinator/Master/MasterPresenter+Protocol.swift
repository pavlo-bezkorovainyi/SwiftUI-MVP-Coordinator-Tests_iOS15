//
//  MasterPresenter+Protocol.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import Foundation

protocol MasterPresenting: ObservableObject { // Notice conformance to ObservableObject
  var viewModel: MasterViewModel { get }
}

final class MasterPresenter: MasterPresenting {
  @Published private(set) var viewModel: MasterViewModel
  
  private let coordinator: MasterCoordinator
  
  init(coordinator: MasterCoordinator) {
    self.coordinator = coordinator
    self.viewModel = MasterViewModel(date: Date())
    // You may want to bind your ViewModel to a service/DB here, maybe using Combine/RxSwift
  }
}
