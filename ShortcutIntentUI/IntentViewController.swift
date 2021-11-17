//
//  IntentViewController.swift
//  ShortcutIntentUI
//
//  Created by Giorgy null on 16/11/21.
//

import IntentsUI

// As an example, this extension's Info.plist has been configured to handle interactions for INSendMessageIntent.
// You will want to replace this or add other intents as appropriate.
// The intents whose interactions you wish to handle must be declared in the extension's Info.plist.

// You can test this example integration by saying things to Siri like:
// "Send a message using <myApp>"

class IntentViewController: UIViewController, INUIHostedViewControlling {
  @IBOutlet weak var imageView: UIImageView!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  // MARK: - INUIHostedViewControlling

  // Prepare your view controller for the interaction to handle.
  func configureView(for parameters: Set<INParameter>, of interaction: INInteraction, interactiveBehavior: INUIInteractiveBehavior, context: INUIHostedViewContext, completion: @escaping (Bool, Set<INParameter>, CGSize) -> Void) {
    guard interaction.intent is CreateOrderIntent else {
      completion(false, Set(), .zero)
      return
    }

    let width = self.extensionContext?.hostedViewMaximumAllowedSize.width ?? 320

    // The intentHandlingStatus never changed to .ready for me. It did sometimes change to .success.
    // Maybe this is buggy or maybe I don't understand how this should work
    //
    // if interaction.intentHandlingStatus == .ready {
    //     // A view for the .ready state
    // } else if interaction.intentHandlingStatus == .success {
    //     // A view for the .success state
    // }
    imageView.image = UIImage(imageLiteralResourceName: "order-summary")
    let desiredSize = CGSize(width: width, height: imageView.image?.size.height ?? 300)

    completion(true, parameters, desiredSize)
  }

  var desiredSize: CGSize {
    return extensionContext!.hostedViewMaximumAllowedSize
  }
}
