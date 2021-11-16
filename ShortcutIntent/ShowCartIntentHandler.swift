//
//  ShowCartIntentHandler.swift
//  ShortcutIntent
//
//  Created by Giorgy null on 16/11/21.
//

import Foundation

class ShowCartIntentHandler: NSObject, ShowCartIntentHandling {
  func confirm(intent: ShowCartIntent, completion: @escaping (ShowCartIntentResponse) -> Void) {
    completion(ShowCartIntentResponse(code: .ready, userActivity: nil))
  }

  func handle(intent: ShowCartIntent, completion: @escaping (ShowCartIntentResponse) -> Void) {
    completion(ShowCartIntentResponse(code: .success, userActivity: nil))
  }
}
