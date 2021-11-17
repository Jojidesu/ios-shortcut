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
      let intent = interaction.intent
      switch intent {
      case intent as CreateOrderIntent:
          let image = UIImage(imageLiteralResourceName: "order-summary")
          imageView.image = image
          completion(true, parameters, desiredSize(imageSize: image.size))
      case intent as ReorderIntent:
          let image = UIImage(imageLiteralResourceName: "reorder")
          imageView.image = image
          completion(true, parameters, desiredSize(imageSize: image.size))
//        case intent as SelectRestaurantIntent:
//        case intent as SelectCategoryIntent:
//        case intent as SelectDishIntent:
//        case intent as SelectQuantityIntent:
//      case intent as OrderFoodIntent:
      default:
          completion(false, Set(), .zero)
      }
  }

    private func desiredSize(imageSize: CGSize) -> CGSize {
        let width = self.extensionContext?.hostedViewMaximumAllowedSize.width ?? 320
        let ratio = imageSize.height/imageSize.width
        let height = imageSize.height / ratio
        return CGSize(width: width, height: height)
  }


}
