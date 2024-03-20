//
//  RootMasterFactory.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

enum MasterFactory {
  static func make<C: MasterCoordinator>(with coordinator: C) -> some View {
    let presenter = MasterPresenter(coordinator: coordinator)
    let view = MasterView(presenter: presenter)
    return view
  }
}
