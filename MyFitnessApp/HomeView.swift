//
//  HomeView.swift
//  MyFitnessApp
//
//  Created by Shivam on 10/11/25.
//

import SwiftUI

struct HomeView: View {
    @State  var Calories: Int = 123
    @State  var Active: Int = 52
    @State  var Stand: Int = 8
    var mockActivity = [
       Activity(id: 0, title: "Today Steps", subtitle: "Goals 10,000", tintColor: .green, image: "figure.walk", amount: "6121"),
       Activity(id: 1, title: "Today Steps", subtitle: "Goals 12,000", tintColor: .red, image: "figure.walk", amount: "2341"),
       Activity(id: 2, title: "Today Steps", subtitle: "Goals 9,000", tintColor: .blue, image: "figure.walk", amount: "5432"),
       Activity(id: 3, title: "Today Steps", subtitle: "Goals 40,000", tintColor: .purple, image: "figure.run", amount: "8625")
    ]
    let mockWorkouts: [Workout] = [
        Workout(id: 0, title: "Running", duration: "23 min", date: "Aug 3", calories: "341 kcal", image: "figure.run", tintColor: .green),
        Workout(id: 1, title: "Cycling", duration: "45 min", date: "Aug 2", calories: "512 kcal", image: "bicycle", tintColor: .blue),
        Workout(id: 2, title: "Strength Training", duration: "30 min", date: "Aug 1", calories: "289 kcal", image: "dumbbell", tintColor: .orange),
        Workout(id: 3, title: "Yoga", duration: "40 min", date: "Jul 30", calories: "180 kcal", image: "figure.cooldown", tintColor: .purple),
        Workout(id: 4, title: "Walking", duration: "60 min", date: "Jul 29", calories: "240 kcal", image: "figure.walk", tintColor: .pink),
        Workout(id: 5, title: "HIIT", duration: "20 min", date: "Jul 28", calories: "350 kcal", image: "flame", tintColor: .red),
    ]
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading){
                    Text("Welcome".uppercased())
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)
                    
                    HStack{
                        Spacer()
                        VStack{
                            VStack(alignment: .leading, spacing: 8){
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.red)
                                Text("123 kcal")
                                    .font(.callout)
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8){
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.green)
                                Text("52 min")
                                    .font(.callout)
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8){
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.blue)
                                Text("8 hours")
                                    .font(.callout)
                                    .bold()
                            }
                            .padding(.bottom)
                        }
                        Spacer()
                        ZStack{
                            ProgressCircleView(progress:$Calories, goal: 600, color: .red)
                            ProgressCircleView(progress:$Active, goal: 60, color: .green)
                                .padding(.all,20)
                            ProgressCircleView(progress:$Stand, goal: 12, color: .blue)
                                .padding(.all,40)
                        }
                        .padding(.horizontal)
                        Spacer()
                    }
                    .padding()
                    HStack{
                        Text("Fitness Acitivity")
                            .font(.title2)
                        Spacer()
                        Button{
                            print("Show More")
                        } label: {
                            Text("Show More")
                                .padding(.all,10)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                        ForEach(mockActivity, id: \.id){ card in
                            ActivityCard(activity: card)
                        }
                    }
                    .padding()
                    
                    HStack{
                        Text("Recent Workouts")
                            .font(.title2)
                        Spacer()
                        NavigationLink{
                            EmptyView()
                        } label: {
                            Text("Show More")
                                .padding(.all,10)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    LazyVStack(spacing: 0){
                        ForEach(mockWorkouts ,id: \.id) { workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
