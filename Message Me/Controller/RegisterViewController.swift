//
//  RegisterViewController.swift
//  Message Me
//
//  Created by Sachin Khanal on 7/24/20.
//  Copyright © 2020 Sachin Khanal. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButtonIsPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "registerbutton", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "registerbutton" {
             let _ = segue.destination as! ChatViewController
                
               print("segue created")
            
        }
        else{
            print("no segue performed")
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
