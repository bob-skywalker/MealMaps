//
//  CKRecord+Ext.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/26/23.
//

import CloudKit

extension CKRecord {
    
    func convertToMealMapLocation() -> MealMapLocation { MealMapLocation(record: self) }
    func convertToMealMapProfile() -> MealMapProfile { MealMapProfile(record: self) } 
}
