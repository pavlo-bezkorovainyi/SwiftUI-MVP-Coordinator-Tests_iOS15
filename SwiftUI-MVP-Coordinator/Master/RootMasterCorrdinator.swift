//
//  RootMasterCorrdinator.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

final class RootMasterCoordinator<P: Coordinator>: MasterCoordinator {
    private weak var window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() -> some View {
        let view = MasterFactory.make(with: self)
        let navigation = NavigationView { view }
        let hosting = UIHostingController(rootView: navigation)
        window?.rootViewController = hosting
        window?.makeKeyAndVisible()
        return EmptyView()
    }
}

