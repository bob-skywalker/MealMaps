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
                        HStack(spacing: 25){
                            Image("default-square-asset")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                                .padding(.vertical, 8)
                            
                            VStack(alignment: .leading){
                                Text("Test Location Name")
                                    .font(.title3)
                                    .lineLimit(1)
                                    .fontWeight(.semibold)
                                    .minimumScaleFactor(0.75)
                                
                                HStack{
                                    AvatarView()
                                    AvatarView()
                                    AvatarView()
                                    AvatarView()
                                    AvatarView()
                                }
                            }
                            .padding()
                        }
                        Divider()
                    }
                }
            }
            .navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}

struct AvatarView: View {
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 35)
            .clipShape(Circle())
    }
}
