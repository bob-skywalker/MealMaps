//
//  CloudKitManager.swift
//  MealMaps
//
//  Created by Bo Zhong on 7/26/23.
//

import CloudKit

struct CloudKitManager {
    
    static func getLocations(completed: @escaping (Result<[MealMapLocation], Error>) -> Void){
        let sortDescriptor = NSSortDescriptor(key: MealMapLocation.kName, ascending: true)
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        query.sortDescriptors = [sortDescriptor]
        
        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            guard error == nil else {
                completed(.failure(error!))
                return
            }
            
            guard let records = records else { return }
            
            let locations = records.map { $0.convertToMealMapLocation() }
            
//            var locations: [MealMapLocation] = []
//
//            for record in records {
//                let location = MealMapLocation(record: record)
//                locations.append(location)
//            }
//
            completed(.success(locations))
        }
        
//        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
//            guard error == nil else {
//                completed(.failure(error!))
//                return
//            }
//
//            guard let records = records else { return }
//
//            var locations: [MealMapLocation] = []
//
//            for record in records {
//                let location = MealMapLocation(record: record)
//                locations.append(location)
//            }
//
//            completed(.success(locations))
//        }
    }
}
