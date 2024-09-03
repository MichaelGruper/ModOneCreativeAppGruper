//
//  ViewController.swift
//  ModOneCreativeAppGruper
//
//  Created by MICHAEL GRUPER on 8/27/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightTextFieldOutlet: UITextField!
    
    @IBOutlet weak var displayLabelOutlet: UILabel!
    
    @IBOutlet weak var weightTextFieldOutlet2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonAction(_ sender: UIButton) {
        print(heightTextFieldOutlet.text!)
        if heightTextFieldOutlet.text! == "59" || heightTextFieldOutlet.text! == "510" || heightTextFieldOutlet.text! == "511" || heightTextFieldOutlet.text! == "600" {
            
            if(Int(weightTextFieldOutlet2.text!) ?? 0 > 155 && Int(weightTextFieldOutlet2.text!) ?? 0 < 175){
                
                displayLabelOutlet.text = "Quarterback"
            }
        }
    }
    
    @IBAction func cancelButtonAction(_ sender: UIButton) {
        
    }
}

