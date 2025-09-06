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
                    Group {
                        if showHome {
                            HomeView()
                        } else {
                            LaunchPageView(onContinue: { showHome = true })
                        }
                    }
                    .background(Theme.surface.ignoresSafeArea())
                }
    }
}

