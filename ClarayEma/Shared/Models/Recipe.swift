//
//  Recipe.swift
//  ClarayEma
//
//  Created by Bárbara Letelier on 07-09-25.
//
import SwiftUI

struct Recipe: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let timeMinutes: Int
    let tone: YolkTone  
}
