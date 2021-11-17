//
//  OrderFoodIntentHandler.swift
//  RecipeAssistant
//
//  Created by phuong vb on 11/16/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
import Intents

class ReorderIntentHandler: NSObject, ReorderIntentHandling {
//    func resolveAgreed(for intent: ReorderIntent, with completion: @escaping (INBooleanResolutionResult) -> Void) {
//        guard let agreed = intent.agreed?.boolValue else {
//            completion(INBooleanResolutionResult.success(with: false))
//            return
//        }
//        completion(INBooleanResolutionResult.success(with: agreed))
//    }

    func handle(intent: ReorderIntent, completion: @escaping (ReorderIntentResponse) -> Void) {
//        guard intent.agreed?.boolValue == true else {
//            completion(ReorderIntentResponse(code: .failure, userActivity: nil))
//            return
//        }
        completion(ReorderIntentResponse(code: .success, userActivity: nil))
    }
}
