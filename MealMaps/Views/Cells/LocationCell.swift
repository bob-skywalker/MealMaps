//
//  LocationCell.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/26/23.
//

import SwiftUI

struct LocationCell: View {
    var location: MealMapLocation
    
    var body: some View {
        HStack(spacing: 20){
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 5)
            
            VStack(alignment: .leading){
                Text(location.name)
                    .foregroundColor(.primary)
                    .font(.title2)
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
        }
        .frame(maxWidth: .infinity)
    }
}

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell(location: MealMapLocation(record: MockData.location))
    }
}
