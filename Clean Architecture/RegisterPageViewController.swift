//
//  RegisterPageViewController.swift
//  Clean Architecture
//
//  Created by Archie Disono on 04/10/2016.
//  Copyright © 2016 Archie Disono. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var firstNameRegisterTxtField: UITextField!
    @IBOutlet weak var lastNameRegisterTxtField: UITextField!
    @IBOutlet weak var passwordRegisterTxtField: UITextField!
    @IBOutlet weak var emailRegisterTxtField: UITextField!
    @IBOutlet weak var usernameRegisterTxtField: UITextField!
    
    @IBAction func registerBtnAction(sender: AnyObject) {
        let registerEmail = emailRegisterTxtField.text ?? ""
        let registerFirstName = firstNameRegisterTxtField.text
        let registerLastName = lastNameRegisterTxtField.text
        let registerUsername = usernameRegisterTxtField.text
        let registerPassword = passwordRegisterTxtField.text ?? ""
        
        // validate forms values
        if (registerEmail.isEmpty || registerPassword.isEmpty) {
            _alertMessage("Validation Error", message: "All fields is required.")
            return;
        }
        
        _alertMessage("Welcome", message: "Thank you...")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func auth() {
        
    }
    
    func _alertMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        alert.addAction(okAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
