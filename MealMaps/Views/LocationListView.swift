//
//  LocationListView.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/21/23.
//

import SwiftUI

struct LocationListView: View {
    @State private var locations : [MealMapLocation] = [MealMapLocation(record: MockData.location)]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locations, id:\.ckRecordID) { locationItem in
                    NavigationLink(destination: LocationDetailView(location: locationItem)) {
                        LocationCell(location: locationItem)
                    }
                }
            }
            .navigationTitle("Meal Spots")
            
        }
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




