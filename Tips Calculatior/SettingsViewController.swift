//
//  SettingsViewController.swift
//  Tips Calculatior
//
//  Created by vinh tran on 12/15/16.
//  Copyright © 2016 vinh tran. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func Save_button(_ sender: Any) {
        defaults.set(Tip_control.selectedSegmentIndex, forKey: "default")
        print("%d ",Tip_control.selectedSegmentIndex)
        defaults.synchronize()
    }
    let defaults = UserDefaults.standard
    @IBOutlet var Tip_control: UISegmentedControl!
    
    @IBAction func `default`(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let intValue = defaults.integer(forKey: "default")
        print("default %d", intValue)
        Tip_control.selectedSegmentIndex = intValue

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
