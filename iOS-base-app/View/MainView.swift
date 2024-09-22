//
//  MainView.swift
//  iOS-base-app
//
//  Created by 이영호 on 9/22/24.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: MainViewModel
    
    var body: some View {
        Text("MainView")
    }
}

#Preview {
    MainView(viewModel: MainViewModel())
}
