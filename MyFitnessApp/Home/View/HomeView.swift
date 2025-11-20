//
//  HomeView.swift
//  MyFitnessApp
//
//  Created by Shivam on 10/11/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
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
                                Text("\(viewModel.Calories)")
                                    .font(.callout)
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8){
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.green)
                                Text("\(viewModel.Active)")
                                    .font(.callout)
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8){
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.blue)
                                Text("\(viewModel.Stand)")
                                    .font(.callout)
                                    .bold()
                            }
                            .padding(.bottom)
                        }
                        Spacer()
                        ZStack{
                            ProgressCircleView(progress:$viewModel.Calories, goal: 600, color: .red)
                            ProgressCircleView(progress:$viewModel.Active, goal: 60, color: .green)
                                .padding(.all,20)
                            ProgressCircleView(progress:$viewModel.Stand, goal: 12, color: .blue)
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
                        ForEach(viewModel.mockActivity, id: \.id){ card in
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
                        ForEach(viewModel.mockWorkouts ,id: \.id) { workout in
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
