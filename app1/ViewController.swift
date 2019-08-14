//
//  ViewController.swift
//  app1
//
//  Created by Karthik on 14/08/19.
//  Copyright © 2019 Karthik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet var tfEnter: UITextField!
    
    @IBAction func btnCopyTapped(_ sender: Any) {
        let message = tfEnter.text?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let app = UIApplication.shared
        let secondApp = "app2://\(message ?? "")"
        let url = URL(string: secondApp)
        
        if app.canOpenURL(url!) {
            app.open(url!, options: [:], completionHandler: nil)
        }
    }
}

