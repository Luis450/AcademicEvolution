//
//  loginViewController.swift
//  academicplus
//
//  Created by tip on 10/30/19.
//  Copyright © 2019 TIP. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var codeField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    @IBAction func loginButton(_ sender: UIButton) {
        let myCode : String
        myCode = codeField.text!
        let myPass : String
        myPass = passField.text!
        
        if (myCode == "2017129893" && myPass == "pepito1") {
            let onHome : UIStoryboard = UIStoryboard(name: "Main",bundle : nil)
            let loginBtn = onHome.instantiateViewController(withIdentifier: "resumen")
            self.present(loginBtn, animated: false, completion: nil)
        }
        else if (myCode.isEmpty && myPass.isEmpty){
            let alert = UIAlertController(title: "Wow", message: "Campos incompletos", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
            
        else{
            let alert = UIAlertController(title: "Wow", message: "Código o contraseña incorrectos", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
}
