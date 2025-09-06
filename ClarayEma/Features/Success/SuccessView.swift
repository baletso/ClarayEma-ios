//
//  SucessView.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

struct SuccessView: View {
    let recipeName: String

    var body: some View {
        VStack(spacing: 24) {
            Text("¡Listo!")
                .font(.largeTitle).bold()
                .foregroundColor(Theme.textPrimary)

            ZStack {
                Circle().fill(Theme.shell).frame(width: 200, height: 200)
                Text("✅")
                    .font(.system(size: 80))
            }

            Text("Tus \(recipeName.lowercased()) están perfectos.")
                .foregroundColor(Theme.textPrimary)

            HStack {
                Button("Repetir") { /* luego: volver al Timer */ }
                    .buttonStyle(.borderedProminent)
                NavigationLink("Volver al inicio") { HomeView() }
                    .buttonStyle(.bordered)
            }

            Spacer()
        }
        .padding(.top, 32)
        .background(Theme.surface.ignoresSafeArea())
        .tint(Theme.textPrimary)
    }
}
