//
//  SettingViewController.swift
//  Tipsy
//
//  Created by Snigdha Kanala on 8/10/17.
//  Copyright © 2017 Snigdha Kanala. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var customTipSegment: UISegmentedControl!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let select = (defaults.object(forKey: "CustomTip") ?? 0) as! Int
        
        //   let select = Int(stringValue) ?? 0
        
        self.customTipSegment.selectedSegmentIndex = select
        
        
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
    

    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
              let tip = customTipSegment.selectedSegmentIndex
        let defaultTips = UserDefaults.standard // Swift 3 syntax, previously 
        defaultTips.set(tip, forKey:"CustomTip")
                defaultTips.synchronize()
        
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
