//
//  InterfaceController.swift
//  HeadsOrTailsWatchApp WatchKit Extension
//
//  Created by Rommel Rico on 3/21/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var headsOrTailsLabel: WKInterfaceLabel!
    
    @IBAction func HeadsOrTailsButton() {
        //Pick a random number between 0 and 1
        var random = arc4random_uniform(2)
        if random == 0 {
            headsOrTailsLabel.setText("Heads")
        } else if random == 1 {
            headsOrTailsLabel.setText("Tails")
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
