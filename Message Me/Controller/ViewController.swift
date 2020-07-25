//
//  ViewController.swift
//  Message Me
//
//  Created by Sachin Khanal on 7/23/20.
//  Copyright © 2020 Sachin Khanal. All rights reserved.
//

import UIKit
import CLTypingLabel

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "📱Message Me"
    }

    @IBAction func loginButtonIsPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "loginispressed", sender: self)
    }
    @IBAction func registerButtonIsPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "registerispressed", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginispressed" {
             let destVC = segue.destination as! LoginViewController
                
            destVC.emailTextField?.placeholder! = "Segue created"
            
        }
        else if segue.identifier == "loginispressed"{
             let destVC = segue.destination as! RegisterViewController
            destVC.emailTextField?.placeholder = "Segue created"
        }
    }
    
}

