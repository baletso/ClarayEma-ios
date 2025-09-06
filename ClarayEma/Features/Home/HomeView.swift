//
//  HomeView.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Elige una receta")
                .font(.largeTitle).bold()
                .foregroundColor(Theme.textPrimary)
                .padding(.horizontal, 20)
                .padding(.top, 24)

            // Por ahora, tres botones “tontos” que navegan al Timer
            NavigationLink("A la copa — 5 min") {
                TimerView(recipeName: "A la copa", minutes: 5, color: Theme.yolkLiquid)
            }
            .buttonStyle(.borderedProminent)

            NavigationLink("Semiduros — 10 min") {
                TimerView(recipeName: "Semiduros", minutes: 10, color: Theme.yolkSoft)
            }
            .buttonStyle(.borderedProminent)

            NavigationLink("Duros — 12 min") {
                TimerView(recipeName: "Duros", minutes: 12, color: Theme.yolkHard)
            }
            .buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding(.horizontal, 20)
        .background(Theme.surface.ignoresSafeArea())
        .tint(Theme.textPrimary) // color del texto de los botones
    }
}
