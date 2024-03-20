//
//  ContentView.swift
//  SwiftUI-MVP-Coordinator
//
//  Created by Павел Бескоровайный on 20.03.2024.
//

import SwiftUI

let dateFormatter = DateFormatter()

struct MasterView<T: MasterPresenting>: View {
    @ObservedObject var presenter: T
    
    var body: some View {
        NavigationButton(contentView: Text("\(presenter.viewModel.date, formatter: dateFormatter)"),
                         navigationView: { isPresented in
                            self.presenter.onButtonPressed(isPresented: isPresented)
        })
    }
}


