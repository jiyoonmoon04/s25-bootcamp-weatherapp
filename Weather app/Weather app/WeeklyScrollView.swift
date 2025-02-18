//
//  WeeklyScrollView.swift
//  Weather app
//
//  Created by Jiyoon Moon on 2/18/25.
//

import SwiftUI

struct WeeklyScrollView: View {
    let day: [String] = ["Today", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun", "Mon", "Tue", "Wed"]
    let weather2: [String] = ["sun.max.fill", "cloud.fill", "cloud.drizzle.fill", "cloud.rain.fill", "sun.max.fill", "cloud", "snowflake", "snowflake", "sun.max.fill", "cloud.sun"]
    let temp2: [String] = ["L: 45 H: 57", "L: 54, H:70", "L: 54, H:70", "L: 54, H:70", "L: 54, H:70", "L: 54, H:70", "L: 54, H:70" ,"L: 54, H:70", "L: 54, H:70", "L: 54, H:70", "L: 54, H:70"]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 8) {
                ForEach(Array(zip(day, zip(weather2, temp2))), id: \.0) {(day, weatherTemp2) in
                    let (weather2, temp2) = weatherTemp2
                    HStack(spacing: 80) {
                        Text(day)
                        Image(systemName: weather2)
                            .font(.title3)
                            .foregroundStyle(.yellow)
                        Text(temp2)
                    }
                    .padding(10)
                }
            }
        }
        .padding([.bottom, .leading, .trailing])
    }
}

#Preview {
    WeeklyScrollView()
}
