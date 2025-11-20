//
//  HomeViewModel.swift
//  MyFitnessApp
//
//  Created by Shivam on 20/11/25.
//

import Foundation
import Combine
import SwiftUI

class HomeViewModel : ObservableObject {
    @Published  var Calories: Int = 123
    @Published  var Active: Int = 52
    @Published  var Stand: Int = 8
    @Published var mockActivity = [
       Activity(id: 0, title: "Today Steps", subtitle: "Goals 10,000", tintColor: .green, image: "figure.walk", amount: "6121"),
       Activity(id: 1, title: "Today Steps", subtitle: "Goals 12,000", tintColor: .red, image: "figure.walk", amount: "2341"),
       Activity(id: 2, title: "Today Steps", subtitle: "Goals 9,000", tintColor: .blue, image: "figure.walk", amount: "5432"),
       Activity(id: 3, title: "Today Steps", subtitle: "Goals 40,000", tintColor: .purple, image: "figure.run", amount: "8625")
    ]
    @Published var mockWorkouts: [Workout] = [
        Workout(id: 0, title: "Running", duration: "23 min", date: "Aug 3", calories: "341 kcal", image: "figure.run", tintColor: .green),
        Workout(id: 1, title: "Cycling", duration: "45 min", date: "Aug 2", calories: "512 kcal", image: "bicycle", tintColor: .blue),
        Workout(id: 2, title: "Strength Training", duration: "30 min", date: "Aug 1", calories: "289 kcal", image: "dumbbell", tintColor: .orange),
        Workout(id: 3, title: "Yoga", duration: "40 min", date: "Jul 30", calories: "180 kcal", image: "figure.cooldown", tintColor: .purple),
        Workout(id: 4, title: "Walking", duration: "60 min", date: "Jul 29", calories: "240 kcal", image: "figure.walk", tintColor: .pink),
        Workout(id: 5, title: "HIIT", duration: "20 min", date: "Jul 28", calories: "350 kcal", image: "flame", tintColor: .red),
    ]
}
