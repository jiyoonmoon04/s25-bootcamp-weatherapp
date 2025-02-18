//
//  Hourly_Forecast_View.swift
//  Weather app
//
//  Created by Jiyoon Moon on 2/18/25.
//

import SwiftUI

struct Hourly_Forecast_View: View {
    let time: [String] = ["Now", "1PM", "2PM", "3PM", "4PM", "4:49PM"]
    let weather: [String] = ["sun.max.fill", "sun.max.fill", "sun.max.fill", "cloud.sun.fill", "sun.max.fill", "sunset"]
    let temp: [String] = [
        "54°", "55°", "57°", "53°", "51°", "50°"
    ]
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "clock")
                Text("HOURLY FORECAST")}
            .foregroundStyle(.white)
            .padding(.top)
            .padding(.leading)

            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach(Array(zip(time, zip(weather, temp))), id: \.0) {(time, weatherTemp) in
                        let (weather, temp) = weatherTemp
                        VStack(spacing: 15){
                            Text(time)
                            Image(systemName: weather)
                                .font(.title3)
                                .foregroundStyle(.yellow)
                            Text(temp)
                        }
                        .padding(10)
                    }
                }
            }
            .padding([.bottom, .leading, .trailing])
        }
        .background(RoundedRectangle(cornerRadius: 20)
            .fill(Color.blue.opacity(0.6)))
            .frame(width: 380, height: 200)
        .padding(10)
        .foregroundStyle(.white)
    }
}


#Preview {
    Hourly_Forecast_View()
}
