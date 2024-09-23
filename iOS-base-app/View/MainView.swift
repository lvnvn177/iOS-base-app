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
   
        VStack {
            Text("MainView")
                .padding()
            Button(action: {
                PushNotificationManager.shared.scheduleLocalNotification (
                 title: "TEST Banner",
                 body: "Check Please",
                 sound: UNNotificationSound.default
                )
            }) {
                Image(systemName: "mail")
            }
        }
        .onAppear {
            PushNotificationManager.shared.requestAuthorization()
        }
    }
        
}

#Preview {
    MainView(viewModel: MainViewModel())
}
