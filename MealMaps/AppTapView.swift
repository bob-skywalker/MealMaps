//
//  AppTapView.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/21/23.
//

import SwiftUI

struct AppTapView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map.fill")
                }
            LocationListView()
                .tabItem {
                    Label("Locations", systemImage: "building.2.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
        }
        .accentColor(.brandPrimary)
    }
}

struct AppTapView_Previews: PreviewProvider {
    static var previews: some View {
        AppTapView()
    }
}
