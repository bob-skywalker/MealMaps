//
//  LocationDetailView.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/22/23.
//

import SwiftUI

struct LocationDetailView: View {
    @Environment(\.dismiss) var dismiss
    var location: MealMapLocation
    
    var items = [
        GridItem(.adaptive(minimum: 115))
    ]
    
    var body: some View {
            VStack(spacing: 13){
                Image("default-banner-asset")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)
                
                HStack{
                    Label(location.address, systemImage: "mappin.and.ellipse")
                        .font(.callout)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Text(location.description)
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .frame(height: 70)
                    .padding(.horizontal)
                
                ZStack {
                    Capsule()
                        .foregroundColor(.gray.opacity(0.2))
                        .frame(height: 95)
                    
                    HStack(spacing: 30){
                        Link(destination: URL(string: "https://www.apple.com")!) {
                            LocationActionButton(imageName: "location.circle.fill", imageColor: .brandPrimary)
                        }
                        
                        Link(destination: URL(string: location.websiteURL)!) {
                            LocationActionButton(imageName: "globe", imageColor: .brandPrimary)
                        }
                        
                        Link(destination: URL(string: "https://www.apple.com")!) {
                            LocationActionButton(imageName: "phone.circle.fill", imageColor: .brandPrimary)
                        }
                        
                        Link(destination: URL(string: "https://www.apple.com")!) {
                            LocationActionButton(imageName: "person.crop.circle.badge.xmark", imageColor: .brandPrimary)
                        }
                        
                    }
                    
                }
                .padding(.horizontal)
                
                Text("Who's here?")
                    .bold()
                    .font(.title2)
                
                ScrollView(.vertical){
                    LazyVGrid(columns: items) {
                        ForEach(0..<12) { _ in
                            FirstNameAvatarView(userName: "Bo Zhong", size: 64)
                        }
                    }
                }
                
                Spacer()
                
            }
            .navigationTitle(location.name)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss") {
                        dismiss()
                    }
                    .accentColor(.brandPrimary)
                }
            }
        
    }
}


struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView(location: MealMapLocation(record: MockData.location))
        }
    }
}


struct LocationActionButton: View {
    var imageName: String
    var imageColor: Color
    
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 62)
            .accentColor(imageColor)
    }
}


struct FirstNameAvatarView: View {
    var userName: String
    var size: CGFloat
    
    var body: some View {
        VStack(spacing: 12){
            AvatarView(size: size)
            Text(userName)
                .foregroundColor(.black.opacity(0.85))
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}
