//
//  ViewController.swift
//  ATAlertControllerDemo
//
//  Created by Arasuvel on 02/03/19.
//  Copyright © 2019 demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    // MARK: Action Methods
    
    @IBAction func oneButtonAlertPressed() {
        Alert(title: "Title", message: "Message")
            .addAction("OK")
            .show()
    }
    
    @IBAction func multipleButtonAlertPressed() {
        Alert(title: "Title", message: "Message")
            .addAction("Accept", style: .default, handler: { (action) in
                print("Accept action clicked")
            })
            .addAction("Cancel", style: .destructive, handler: { (action) in
                print("Cancel action clicked")
            })
            .show()
    }
    
    @IBAction func alertWithTextFieldPressed() {
        var textField = UITextField()
        Alert(title: "Title", message: "Message")
            .addTextField(&textField, required: true)
            .addAction("Ok", style: .default) { (action) in
                
            }
            .addAction("Cancel", style: .destructive) { (action) in
                
            }
            .show()
    }
    
    @IBAction func actionPressed() {
        ActionSheet(title: "Title", message: "Message")
            .addAction("Google Maps", style: .default, handler: { (action) in
                print("Google Maps action clicked")
            })
            .addAction("Apple Maps", style: .default, handler: { (action) in
                print("Apple Maps action clicked")
            })
            .addAction("Cancel", style: .cancel, handler: { (action) in
                print("Cancel action clicked")
            })
            .show()
    }
    
}

