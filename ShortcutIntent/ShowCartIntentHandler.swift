//
//  ShowCartIntentHandler.swift
//  RecipeAssistant
//
//  Created by phuong vb on 11/17/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
import Intents

class ShowCartIntentHandler: NSObject, ShowCartIntentHandling {
    func handle(intent: ShowCartIntent, completion: @escaping (ShowCartIntentResponse) -> Void) {
        completion(ShowCartIntentResponse(code: .success, userActivity: nil))
    }

    func resolveCart(for intent: ShowCartIntent, with completion: @escaping (CartResolutionResult) -> Void) {

        guard let cart = intent.cart else {
            completion(CartResolutionResult.disambiguation(with: []))
            return
        }
        completion(CartResolutionResult.success(with: cart))
    }
}
