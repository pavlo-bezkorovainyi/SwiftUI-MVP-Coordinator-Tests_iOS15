//
//  MasterPresenter+Protocol.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

class Presenter<C: Coordinator> {
    private(set) weak var coordinator: C?
    
    init(coordinator: C) {
        self.coordinator = coordinator
    }
    
    deinit {
        coordinator?.stop()
    }
}

protocol MasterPresenting: ObservableObject {
    associatedtype U: View
    var viewModel: MasterViewModel { get }
    func onButtonPressed(isPresented: Binding<Bool>) -> U
}

final class MasterPresenter<C: MasterCoordinator>: Presenter<C>, MasterPresenting {
    @Published private(set) var viewModel: MasterViewModel
    
    override init(coordinator: C) {
        self.viewModel = MasterViewModel(date: Date())
        super.init(coordinator: coordinator)
    }
    
    func onButtonPressed(isPresented: Binding<Bool>) -> some View {
        return coordinator?.presentDetailView(isPresented: isPresented)
    }
}
