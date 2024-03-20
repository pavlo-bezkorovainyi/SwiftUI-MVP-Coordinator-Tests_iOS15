//
//  NavigationButton.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

struct NavigationButton<CV: View, NV: View>: View {
  @State private var isPresented = false
  
  var contentView: CV
  var navigationView: (Binding<Bool>) -> NV
  
  var body: some View {
    Button(action: {
      self.isPresented = true
    }) {
      contentView
        .background(
          navigationView($isPresented)
        )
    }
  }
}
