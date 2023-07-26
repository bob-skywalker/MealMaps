//
//  MealMapProfile.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/26/23.
//

import CloudKit

struct MealMapProfile {
    static let kAvatar      = "avatar"
    static let kBio         = "bio"
    static let kCompanyName = "companyName"
    static let kFirstName   = "name"
    static let kIsCheckedIn = "isCheckedIn"
    static let kLastName    = "lastName"
    
    let ckRecordID: CKRecord.ID
    let avatar: CKAsset!
    let bio: String
    let companyName: String
    let firstName: String
    let isCheckedIn: CKRecord.Reference? = nil
    let lastName: String
    
    init(record: CKRecord) {
        self.ckRecordID = record.recordID
        self.avatar = record[MealMapProfile.kAvatar] as? CKAsset
        self.bio = record[MealMapProfile.kBio] as? String ?? "N/A"
        self.companyName = record[MealMapProfile.kCompanyName] as? String ?? "N/A"
        self.firstName = record[MealMapProfile.kFirstName] as? String ?? "N/A"
        self.lastName = record[MealMapProfile.kLastName] as? String ?? "N/A"
    }
}
