//
//  ViewController.swift
//  Tipsy
//
//  Created by Snigdha Kanala on 8/9/17.
//  Copyright © 2017 Snigdha Kanala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmt: UILabel!
    @IBOutlet weak var totalAmt: UILabel!
    
    @IBOutlet weak var tipSegmentControl: UISegmentedControl!
    @IBOutlet weak var billAmt: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let select = (defaults.object(forKey: "CustomTip") ?? 0) as! Int
        
     //   let select = Int(stringValue) ?? 0
        
        self.tipSegmentControl.selectedSegmentIndex = select

        
      //  if(select == 18)
        //{
          //  self.tipSegmentControl.selectedSegmentIndex = select
        //}
        //else if (select == 20)
        //{
          //  self.tipSegmentControl.selectedSegmentIndex = 1
        //}
        //else if(select == 25)
        //{
          //  self.tipSegmentControl.selectedSegmentIndex = 2
        //}
        
        
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18,0.2,0.25]
        let bill = Double(billAmt.text!) ?? 0
        let tip = bill * tipPercentages[tipSegmentControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipAmt.text = String(format: "$%.2f", tip)
        totalAmt.text = String(format: "$%.2f", total)
        
            }
    
    
}

