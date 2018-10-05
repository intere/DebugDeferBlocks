//
//  ViewController.swift
//  DebugDeferBlocks
//
//  Created by Eric Internicola on 10/5/18.
//  Copyright © 2018 Adventure Projects. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        defer {
            print("Defer breakpoint")
        }

        print("Non-defer breakpoint")
    }


}

