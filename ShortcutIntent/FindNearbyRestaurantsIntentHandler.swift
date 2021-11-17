//
//  FindNearByRestaurantIntentHandler.swift
//  ShortcutIntent
//
//  Created by phuong vb on 11/17/21.
//

import Foundation
import Intents

class FindNearbyRestaurantsIntentHandler: NSObject, FindNearbyRestaurantsIntentHandling {
    func handle(intent: FindNearbyRestaurantsIntent, completion: @escaping (FindNearbyRestaurantsIntentResponse) -> Void) {
        completion(FindNearbyRestaurantsIntentResponse.success(restaurantNames: Restaurant.allNames))
    }
}
