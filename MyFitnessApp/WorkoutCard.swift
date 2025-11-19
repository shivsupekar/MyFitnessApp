//
//  WorkoutCard.swift
//  MyFitnessApp
//
//  Created by Shivam on 20/11/25.
//

import SwiftUI
struct Workout {
    var id: Int
    var title: String
    var duration: String
    var date: String
    var calories: String
    var image: String
    var tintColor : Color
}
struct WorkoutCard: View {
    @State var workout : Workout
    var body: some View {
        HStack{
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48,height: 48)
                .foregroundStyle(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            
            VStack(spacing: 16){
                HStack{
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                Spacer()
                    Text(workout.duration)
                }
                HStack{
                    Text(workout.date)
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text(workout.calories)
                }
            }
        }
        .padding()
    }
}

#Preview {
    WorkoutCard(workout: Workout(id: 0, title: "Running", duration: "23 min", date: "Aug 3", calories: "341 kcal", image: "figure.run", tintColor: .green))
}
