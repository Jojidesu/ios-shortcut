/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Convenience utility for working with NSUserActivity.
*/

import Foundation
import UniformTypeIdentifiers

extension NSUserActivity {

    public static let orderCompleteActivityType = "com.example.HuntingParty.orderComplete"
    public static let orderFailActivityType = "com.example.HuntingParty.orderFail"
    
    public static var orderFail: NSUserActivity {
        let userActivity = NSUserActivity(activityType: NSUserActivity.orderFailActivityType)

        userActivity.title = "Fail to order"
        userActivity.isEligibleForPrediction = true

        let phrase = "Order foodpanda"
        userActivity.suggestedInvocationPhrase = phrase
        return userActivity
    }

    public static let viewCartActivitiyType = "com.example.HuntingParty.viewCart"

    public static var viewCart: NSUserActivity {
        let userActivity = NSUserActivity(activityType: NSUserActivity.viewCartActivitiyType)

        userActivity.title = "Fail to order"
        userActivity.isEligibleForPrediction = true
        let phrase = "Order foodpanda"
        userActivity.suggestedInvocationPhrase = phrase
        return userActivity
    }

}
