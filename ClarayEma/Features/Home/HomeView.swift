//
//  HomeView.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

struct HomeView: View {
    @State private var selectedRecipe: Recipe?
    
    private let recipes: [Recipe] = [
        .init(title: "A la copa",
              subtitle: "Clara cuajada – yEma líquida, ideal para comer en taza con cuchara.",
              timeMinutes: 5,
              tone: .liquid),
        .init(title: "Semiduros",
              subtitle: "Clara firme y yEma cremosa, perfecto para sándwiches o ensaladas.",
              timeMinutes: 10,
              tone: .soft),
        .init(title: "Duros",
              subtitle: "Clara y yEma sólidas, para picar o rellenar.",
              timeMinutes: 12,
              tone: .hard)
    ]

    var body: some View {
        VStack(spacing: 0) {
            AppHeader()
            
            ScrollView {
                ContentContainer(maxWidth: 600, horizontalPadding: 20, topSpacing: 24) {
                    VStack(alignment: .leading, spacing: 24) {
                        Text("Elige una receta para preparar tus huevos")
                            .font(AppTypography.h1)
                            .foregroundStyle(Theme.textPrimary)

                        VStack(spacing: 16) {
                            ForEach(recipes) { r in
                                RecipeCard(
                                    title: r.title,
                                    subtitle: r.subtitle,
                                    timeText: "\(r.timeMinutes) min",
                                    yolkTone: r.tone
                                ) {
                                    selectedRecipe = r
                                }
                            }
                        }
                    }
                }
            }
        }
        .background(Theme.surface.ignoresSafeArea())
        .navigationBarHidden(true)
        .navigationDestination(item: $selectedRecipe) { recipe in
                    // Adaptador: pasamos exactamente lo que TimerView pide hoy
                    TimerView(
                        recipeName: recipe.title,
                        minutes: recipe.timeMinutes,
                        color: recipe.tone.color
                    )
                }
    }
}
