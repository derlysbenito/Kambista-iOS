//
//  DBLoginViewController.swift
//  Kambista
//
//  Created by Derlys H. on 1/7/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit

class DBLoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var viewModelController = DBLoginViewModelController()
    var userViewModelController = DBUserViewModelController()
    
    //MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emailTextField.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    
    @IBAction func loginAction(_ sender: UIButton) {

        /*self.viewModelController.loginWithEmail(email: self.emailTextField.text ?? "", password: self.passwordTextField.text ?? "", success: {
            let message = self.viewModelController.loginViewModel.message
            
            let alertController = UIAlertController(title: "Kambista", message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: { (action) in
                self.performSegue(withIdentifier: "showWelcomeSID", sender: self)
            }))
            self.present(alertController, animated: true, completion: nil)
        }) {
            //error
        } */
        
        if validateTextFields() {
            self.userViewModelController.userViewModel = DBUserViewModel(email: self.emailTextField.text!, name: "Derlys Benito", age: 23)
            
            self.performSegue(withIdentifier: "showWelcomeSID", sender: self)
        } else {
            let alerController = UIAlertController(title: "Kambista", message: "Por favor competar todos los campos", preferredStyle: .alert)
            alerController.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: { (action) in
                self.emailTextField.becomeFirstResponder()
            }))
            self.present(alerController, animated: true, completion: nil)
            
        }
        
    }
    
    func validateTextFields() -> Bool{
        if (self.emailTextField.text != "") {
            if (self.passwordTextField.text != "") {
                return true;
            }
        }
        return false;
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWelcomeSID" {
            let dvc = segue.destination as! DBWelcomeViewController
            dvc.userViewModelController = self.userViewModelController
            
        }
    }
    
    
}
