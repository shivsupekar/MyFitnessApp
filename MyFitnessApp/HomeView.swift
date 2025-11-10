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
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                Text("Welcome".uppercased())
                    .font(.largeTitle)
                    .bold()
                
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
                    
            }
        }
    }
}

#Preview {
    HomeView()
}
