//
//  RootView.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

struct RootView: View {
    @State private var showHome = false

    var body: some View {
        NavigationStack {
            ZStack {
                Theme.surface.ignoresSafeArea()

                if showHome {
                    HomeView()
                } else {
                    LaunchPageView {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            showHome = true
                        }
                    }
                }
            }
        }
    }
}


