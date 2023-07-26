//
//  MockData.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/26/23.
//

import CloudKit

struct MockData {
    static var location: CKRecord {
        let record = CKRecord(recordType: "MealMapLocation")
        record[MealMapLocation.kName] = "Sean's Bar and Grill"
        record[MealMapLocation.kAddress] = "123 Main Street"
        record[MealMapLocation.kDescription] = "This is a test description. Let me test to see how this magic works!"
        record[MealMapLocation.kWebsiteURL] = "https://www.apple.com"
        record[MealMapLocation.kLocation] = CLLocation(latitude: 37.331516, longitude: -121.891054)
        record[MealMapLocation.kPhoneNumber] = "415-525-1111"
        
        return record
    }
}
