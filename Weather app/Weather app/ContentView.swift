//
//  ContentView.swift
//  Weather app
//
//  Created by Jiyoon Moon on 2/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
            }
            .edgesIgnoringSafeArea(.all)
            VStack { Text("Chapel Hill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                Text("55°")
                    .font(.system(size:80))
                    .foregroundStyle(.white)
                    .fontWeight(.light)
                Text("Sunny")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .brightness(0.7)
                Text("H: 57° L: 45°")
                    .foregroundStyle(.white)
                VStack{Hourly_Forecast_View()
                    WeeklyForecastView()}
            }
        }
    }
    
}

#Preview {
    ContentView()
}
