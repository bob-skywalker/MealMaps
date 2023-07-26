//
//  LocationListView.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/21/23.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack{
                    ForEach(0..<10) { _ in
                        NavigationLink {
                            LocationDetailView()
                        } label: {
                            LocationCell()
                            }
                        }

                        Divider()
                    }
                }
            }
            .navigationTitle("Meal Spots")

        }
    }


struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}

struct AvatarView: View {
    var size: CGFloat
    
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}


struct LocationCell: View {
    var body: some View {
        HStack(spacing: 25){
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading){
                Text("Test Location Name")
                    .foregroundColor(.primary)
                    .font(.title3)
                    .lineLimit(1)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.75)
                
                HStack{
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                }
            }
            .padding()
        }
    }
}
