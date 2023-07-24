//
//  ProfileView.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/21/23.
//

import SwiftUI

struct NameStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32, weight: .bold))
            .minimumScaleFactor(0.75)
    }
}

extension View {
    func nameStyle() -> some View {
        self.modifier(NameStyleModifier())
    }
}


struct ProfileView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var companyName: String = ""
    @State private var bio: String = ""

    
    var body: some View {
        VStack{
            ZStack{
                Color(.secondarySystemBackground)
                    .frame(height: 130)
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                HStack {
                    ZStack{
                        AvatarView(size: 84)
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.white)
                            .offset(y: 31)
                    }
                    .padding(.leading, 10)
                    
                    VStack(spacing: 2){
                        TextField("First Name", text: $firstName)
                            .nameStyle()
                        TextField("Last Name", text: $lastName)
                            .nameStyle()
                        TextField("Company Name", text: $companyName)
                    }
                    .padding(.trailing, 15)
                }
                .padding()
            }
            
            Spacer()
        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
    }
}
