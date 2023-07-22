//
//  MealMapsApp.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/20/23.
//

import SwiftUI

@main
struct MealMapsApp: App {
    init(){
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance.init(idiom: .unspecified)
    }
    
    
    var body: some Scene {
        WindowGroup {
            AppTapView()
        }
    }
}
