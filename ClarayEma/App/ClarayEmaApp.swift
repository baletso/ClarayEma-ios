//
//  ClarayEmaApp.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//

import SwiftUI

// @main
//struct ClarayEmaApp: App {
//    var body: some Scene {
//        WindowGroup { RootView() }
//    }
//}

@main
struct ClarayEmaApp: App {
    init() {
        // Loguea todas las variantes de Fredoka encontradas en el bundle
        for family in UIFont.familyNames.sorted() {
            if family.lowercased().contains("fredoka") {
                let names = UIFont.fontNames(forFamilyName: family).sorted()
                print("🅵 Family:", family, "→", names)
            }
        }
    }

    var body: some Scene {
        WindowGroup { RootView() }
    }
}
