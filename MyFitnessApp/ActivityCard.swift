//
//  ActivityCard.swift
//  MyFitnessApp
//
//  Created by Shivam on 19/11/25.
//

struct Activity {
    var id : Int
    var title : String
    var subtitle : String
    var tintColor : Color
    var image : String
    var amount : String
}

import SwiftUI

struct ActivityCard: View {
    @State var activity : Activity
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack{
                HStack(alignment: .top){
                    VStack(alignment:.leading,spacing: 8){
                        Text(activity.title)
                        
                        Text(activity.subtitle)
                            .font(.caption)
                    }
                    Spacer()
                    Image(systemName: activity.image)
                        .foregroundColor(activity.tintColor)
                }
                
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCard(activity: Activity(id: 0, title: "Today Steps", subtitle: "Goals 10,000", tintColor: .green, image: "figure.walk", amount: "6121"))
}
