//
//  TimerView.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

struct TimerView: View {
    let recipeName: String
    let minutes: Int
    let color: Color

    var body: some View {
        VStack(spacing: 24) {
            Text(recipeName)
                .font(.title).bold()
                .foregroundColor(Theme.textPrimary)

            // Núcleo del timer (placeholder)
            ZStack {
                Circle().stroke(Theme.textPrimary, style: StrokeStyle(lineWidth: 6, dash: [8, 10]))
                    .frame(width: 240, height: 240)
                Circle().fill(color)
                    .frame(width: 180, height: 180)
                Text("\(minutes):00")
                    .font(.system(size: 36, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
            }

            NavigationLink("Simular fin →") {
                SuccessView(recipeName: recipeName)
            }
            .buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding(.top, 32)
        .background(Theme.surface.ignoresSafeArea())
        .tint(Theme.textPrimary)
    }
}
