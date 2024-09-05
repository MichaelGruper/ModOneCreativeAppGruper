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
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonAction(_ sender: UIButton) {
        if Int(heightTextFieldOutlet.text!) ?? 0 >= 590 && Int(heightTextFieldOutlet.text!) ?? 0 <= 600{
            
            if(Int(weightTextFieldOutlet2.text!) ?? 0 >= 155 && Int(weightTextFieldOutlet2.text!) ?? 0 <= 200){
                
                displayLabelOutlet.text = "Quarterback"
                imageViewOutlet.image = UIImage(named: "quarterback")
            }
        }
        else if Int(heightTextFieldOutlet.text!) ?? 0 >= 550 && Int(heightTextFieldOutlet.text!) ?? 0 < 590 {
            if Int(weightTextFieldOutlet2.text!) ?? 0 >= 120 && Int(weightTextFieldOutlet2.text!) ?? 0 < 150 {
                displayLabelOutlet.text = "Wide Reciever or Safety"
                imageViewOutlet.image = UIImage(named: "reciever")
            }
        }
        else if Int(heightTextFieldOutlet.text!) ?? 0 >= 560 && Int(heightTextFieldOutlet.text!) ?? 0 < 590 {
            if Int(weightTextFieldOutlet2.text!) ?? 0 >= 160 && Int(weightTextFieldOutlet2.text!) ?? 0 < 185 {
                displayLabelOutlet.text = "Running Back or Linebacker"
                imageViewOutlet.image = UIImage(named: "runningback")
            }
        }
        else if Int(heightTextFieldOutlet.text!) ?? 0 >= 510 {
            if Int(weightTextFieldOutlet2.text!) ?? 0 >= 200 {
                displayLabelOutlet.text = "Offensive Line or Defensive Line"
                imageViewOutlet.image = UIImage(named: "oline")
            }
            else{
                displayLabelOutlet.text = "Tight End"
                imageViewOutlet.image = UIImage(named: "tightend")
            }
        }
        else{
            displayLabelOutlet.text = "Either you need to hit the gym, or you need to put in a valid input!"
            imageViewOutlet.image = UIImage(named: "")
        }
    }
    
    @IBAction func cancelButtonAction(_ sender: UIButton) {
        heightTextFieldOutlet.text = ""
        weightTextFieldOutlet2.text = ""
        displayLabelOutlet.text = "Enter Something!"
        imageViewOutlet.image = UIImage(named: "")
    }
}

