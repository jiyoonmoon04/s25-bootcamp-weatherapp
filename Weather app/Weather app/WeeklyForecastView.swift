//
//  WeeklyForecastView.swift
//  Weather app
//
//  Created by Jiyoon Moon on 2/18/25.
//

import SwiftUI

struct WeeklyForecastView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{Image(systemName: "calendar")
                Text("10-DAY FORECAST")}
            .padding(.horizontal, 20)
            WeeklyScrollView()
        }
        .background(RoundedRectangle(cornerRadius: 20)
            .fill(Color.blue.opacity(0.6))
            .frame(width: 380, height:400))
        .padding(.horizontal, 10)
        .foregroundStyle(.white)
    }
}

#Preview {
    WeeklyForecastView()
}
