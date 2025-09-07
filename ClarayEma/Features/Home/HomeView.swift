//
//  HomeView.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 06-09-25.
//
import SwiftUI

struct HomeView: View {
    private let recipes: [Recipe] = [
            .init(title: "A la copa",
                  subtitle: "Clara cuajada – yEma líquida, ideal para comer en taza con cuchara.",
                  timeMinutes: 5,
                  tone: .liquid),   // <-- usamos YolkTone
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
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                Text("Elige una receta para preparar tus huevos")
                    .font(AppTypography.h1)
                    .foregroundStyle(Theme.textPrimary)
                    .padding(.top, 24)
                    .padding(.horizontal, 20) // <- solo el título, está OK
                
                ForEach(recipes) { r in
                    RecipeCard(
                        title: r.title,
                        subtitle: r.subtitle,
                        timeText: "\(r.timeMinutes) min",
                        yolkTone: r.tone
                    ) {
                        // navegación...
                    }
                }
                
                Spacer(minLength: 24)
            }
        }
        .background(Theme.surface.ignoresSafeArea())
    }
}
