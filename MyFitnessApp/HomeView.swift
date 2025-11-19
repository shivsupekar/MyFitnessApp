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
    var body: some View {
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
            }
        }
    }
}

#Preview {
    HomeView()
}
