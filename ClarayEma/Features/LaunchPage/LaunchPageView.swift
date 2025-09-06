//
//  LaunchPageView.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI


struct LaunchPageView: View {
    var onContinue: () -> Void = {}

    var body: some View {
        VStack(spacing: 24) {
            Spacer()

            // Placeholder del logo (luego pondremos el asset real)
            ZStack {
                Circle().fill(Theme.shell).frame(width: 180, height: 180)
                Text("🥚")
                    .font(.system(size: 72))
            }

            VStack(spacing: 8) {
                Text("Clara yEma")
                    .font(.largeTitle).bold()
                    .foregroundColor(Theme.textPrimary)
                Text("Prepara tus huevos favoritos con precisión")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Theme.textPrimary.opacity(0.8))
            }
            .padding(.horizontal, 32)

            Spacer()

            Button(action: onContinue) {
                Text("Empezar")
                    .font(.title3).bold()
                    .foregroundColor(Theme.textPrimary)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(Theme.cta)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Theme.ctaStroke, lineWidth: 3)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.horizontal, 24)
            }

            Spacer(minLength: 32)
        }
        .background(Theme.surface.ignoresSafeArea())
    }
}
