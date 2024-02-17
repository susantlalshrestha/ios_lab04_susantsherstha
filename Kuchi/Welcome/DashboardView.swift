//
//  DashboardView.swift
//  Kuchi
//
//  Created by SusantShrestha on 2/17/24.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            Text("Dashboard")
                .font(.title)
                .padding()
            
            Spacer()
            
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Text("Welcome, User!")
                    .font(.headline)
            }
            .padding()
            
            Spacer()
            
            Button(action: {
                // Add action for button if needed
            }) {
                HStack {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Settings")
                        .font(.headline)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
            
            Spacer()
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
