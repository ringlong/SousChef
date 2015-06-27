//
//  RecipeDetailInterfaceController.swift
//  SousChef
//
//  Created by Ryan on 15/6/25.
//  Copyright (c) 2015年 Ray Wenderlich. All rights reserved.
//

import Foundation
import WatchKit
import SousChefKit

class RecipeDetailInterfaceController: WKInterfaceController {
  @IBOutlet weak var nameLabel: WKInterfaceLabel!
  
  var recipe: Recipe?
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    recipe = context as? Recipe
    nameLabel.setText(recipe?.name)
  }
  
  override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
    return recipe
  }
}