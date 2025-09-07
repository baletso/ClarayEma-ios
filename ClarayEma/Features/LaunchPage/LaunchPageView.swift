//
//  LaunchPageView.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

struct LaunchPageView: View {
    var onContinue: () -> Void
    var delay: TimeInterval = 1.2

    var body: some View {
        ZStack {
            Theme.surface.ignoresSafeArea()

            VStack {
                Spacer(minLength: 40)

                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180)
                    .accessibilityLabel("Clara yEma")

                Spacer()
            }
            .padding(.horizontal, 24)
        }
        .statusBarHidden(true)
        .task {
            try? await Task.sleep(nanoseconds: UInt64(delay * 1_000_000_000))
            onContinue()
        }
    }
}
