//
//  ModalLink.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

struct ModalLink<T: View>: View {
  @Binding var isPresented: Bool
  var destination: T
  
  var body: some View {
    EmptyView()
      .sheet(isPresented: $isPresented, content: {
        self.destination
      })
  }
}
