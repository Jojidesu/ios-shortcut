//
//  ShowCartIntentHandler.swift
//  ShortcutIntent
//
//  Created by Giorgy null on 16/11/21.
//

import Foundation

//class CreateOrderIntentHandler: NSObject, CreateOrderIntentHandling {
//  func confirm(intent: CreateOrderIntent, completion: @escaping (CreateOrderIntentResponse) -> Void) {
//    completion(CreateOrderIntentResponse(code: .ready, userActivity: nil))
//  }
//
//  func handle(intent: CreateOrderIntent, completion: @escaping (CreateOrderIntentResponse) -> Void) {
//    let order = Order(identifier: "order1", display: "order1", subtitle: "order", image: nil)
//    order.totalPrice = 24.9
//    order.payment = "Mastercard ending with 5764"
//    completion(CreateOrderIntentResponse.success(order: order))
//  }
//}

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
