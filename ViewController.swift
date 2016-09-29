//
//  ViewController.swift
//  Tippy2
//
//  Created by Sravanthi Naga on 9/24/16.
//  Copyright © 2016 Sravanthi Naga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!

    
    //override func viewDidLoad() {
      //  super.viewDidLoad
     //ad()
        // Do any additional setup after loading the view, typically from a nib
   // } cvfn0-7m,]
    //
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentages=[0.18, 0.2, 0.25]
        let bill=Double(billField.text!) ?? 0
        let tip=bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total=bill+tip
        
        
        tipLabel.text=String(format: "$%.2f",tip)
        totalLabel.text=String(format: "$%.2f",  total)
        
        
    }
    
}

