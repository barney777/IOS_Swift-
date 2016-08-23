//
//  ViewController.swift
//  BMI
//
//  Created by BEI-FONG GUAN on 2016/8/22.
//  Copyright © 2016年 barney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var aa: UITextField!
    
    @IBOutlet weak var bb: UITextField!
    
    @IBOutlet weak var cc: UILabel!
    
    @IBOutlet weak var dd: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func BT_clean(sender: AnyObject) {
        aa.text = String("")
        bb.text = String("")
        cc.text = String("")
        dd.text = String("")
        
    }


    @IBOutlet weak var BT: UIButton!
    @IBAction func BT(sender: AnyObject) {
        let Height = Double(aa.text!)
        let Weight = Double(bb.text!)
        if ( Height < 0) {
            cc.text = String("請輸入身高")
        }
        else if ( Weight < 0) {
            cc.text = String("請輸入體重")
            
        }
        else{
            let BMI = Double(Weight!/(Height!*Height!))
            let BMI_value = String(format:"%.2f",BMI*10000)
            let BMI_BT:Double = BMI*10000
            cc.text = BMI_value
            if BMI_BT < 18.5 {
                dd.textColor = UIColor.darkGrayColor()
                dd.text = String("體重過輕")
                print("體重過輕")
            }
            else if(BMI_BT <= 18.5) || (BMI_BT < 24) {
                dd.textColor = UIColor.blackColor()
                dd.text = String("BMI值正常")
                print("BMI值正常")
            }
            else if(BMI_BT <= 24) || (BMI_BT < 27) {
                dd.textColor = UIColor.blueColor()
                dd.text = String("體重過重")
                print("體重過重")
            }
            else if(BMI_BT <= 27) || (BMI_BT < 30) {
                dd.textColor = UIColor.redColor()
                dd.text = String("輕度肥胖")
                print("輕度肥胖")
            }
            else if(BMI_BT <= 30) || (BMI_BT < 35) {
                dd.textColor = UIColor.redColor()
                dd.text = String("中度肥胖")
                print("中度肥胖")
            }
            else if(BMI_BT > 35) {
                dd.textColor = UIColor.redColor()
                dd.text = String("重度肥胖")
                print("重度肥胖")
            }
            
        }

    }
    
    
}

