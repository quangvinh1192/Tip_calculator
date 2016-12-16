//
//  ViewController.swift
//  Tips Calculatior
//
//  Created by vinh tran on 12/15/16.
//  Copyright © 2016 vinh tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Total_label: UILabel!
    @IBOutlet var Bill_label: UITextField!
    @IBOutlet var Tip_label: UILabel!
    @IBOutlet var Tip_control: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func Tap_control(_ sender: Any) {
        //tap anywhere distap the keyboard
        view.endEditing(true)
    }

    
    @IBAction func re_calculate_tip(_ sender: AnyObject) {
        let tip_percent = [0.18, 0.2, 0.25]
        let bill = Double (Bill_label.text!) ?? 0
        let tip = bill * tip_percent[Tip_control.selectedSegmentIndex]
        let total = bill + tip
        Tip_label.text = String(format: "$ %.2f", tip)
        Total_label.text = String(format: "$ %.2f", total)
        
    }
}

