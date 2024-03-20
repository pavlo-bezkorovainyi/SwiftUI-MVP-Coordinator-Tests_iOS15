//
//  RootMasterFactory.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

enum MasterFactory {
  static func make(with coordinator: MasterCoordinator) -> some View {
    let presenter = MasterPresenter(coordinator: coordinator)
    let view = MasterView(presenter: presenter)
    return view
  }
}
