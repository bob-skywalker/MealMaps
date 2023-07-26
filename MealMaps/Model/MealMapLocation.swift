//
//  MealMapLocation.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/25/23.
//

import Foundation
import CloudKit


struct MealMapLocation {
    static let kAddress     = "address"
    static let kBannerAsset = "bannerAsset"
    static let kDescription = "description"
    static let kLocation    = "location"
    static let kName        = "name"
    static let kPhoneNumber = "phoneNumber"
    static let kSquareAsset = "squareAsset"
    static let kWebsiteURL  = "websiteURL"
    
    let ckRecordID: CKRecord.ID
    let address: String
    let bannerAsset: CKAsset!
    let description: String
    let location: CLLocation
    let name: String
    let phoneNumber: String
    let squareAsset: CKAsset!
    let websiteURL: String
    
    init(record: CKRecord) {
        self.ckRecordID  = record.recordID
        self.address     = record[MealMapLocation.kAddress] as? String ?? "N/A"
        self.bannerAsset = record[MealMapLocation.kBannerAsset] as? CKAsset
        self.description = record[MealMapLocation.kDescription] as? String ?? "N/A"
        self.location    = record[MealMapLocation.kLocation] as? CLLocation ?? CLLocation(latitude: 0, longitude: 0)
        self.name        = record[MealMapLocation.kName] as? String ?? "N/A"
        self.phoneNumber = record[MealMapLocation.kPhoneNumber] as? String ?? "N/A"
        self.squareAsset = record[MealMapLocation.kSquareAsset] as? CKAsset
        self.websiteURL  = record[MealMapLocation.kWebsiteURL] as? String ?? "N/A"
    }
}

