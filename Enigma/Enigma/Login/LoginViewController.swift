//
//  LoginViewController.swift
//  Enigma
//
//  Created by Tommy on 06/01/22.
//

import UIKit
import Kingfisher
import SwiftUI

class LoginViewController: UIViewController {

    @IBOutlet weak var icon: RoundedImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        
        
        let url = URL(string: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg")
//        icon.image = UIImage(named: "Vector")
        icon.kf.setImage(with: url)
        
    }
    
    deinit {
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    

    @IBAction func loginTapped(_ sender: Any) {
        view.endEditing(true)
     
        
        let validate = validate()
        if validate.isValid {
            print("\(validate.message)")
            navigateToHome(self)
        }else{
          
            
            UserDefaultsHelper.save(value: false, key: UserDefaultsKey.isLogin)
            print(UserDefaultsHelper.get(for: Bool.self, key: UserDefaultsKey.isLogin))
           
            
            let model = LoginModel()
            model.isLogin = true
            model.isMessage = "Oke"
            UserDefaultsHelper.save(dataModel: model, key: UserDefaultsKey.isLoginModel)
            
            let modelResult: LoginModel? = UserDefaultsHelper.get(key: UserDefaultsKey.isLoginModel)
            print(modelResult.debugDescription)

            
            
            
            showAlert(message: validate.message)
        }
    }
    
    //MARK: - validate
    func validate() -> (isValid: Bool, message: String) {
        guard let username = usernameTextField.text, !username.isEmpty else { return (false, "username tidak boleh kosonng")  }
        
        
        guard let password = passwordTextField.text, !password.isEmpty else { return (false, "password tidak boleh kosonng")  }

        return (true, "".changeDate())
    }
    
    
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Oke", style: UIAlertAction.Style.default, handler: nil))
        present(alert, animated: true)
    }
    
}

///20 - 03 - 2021
///20 maret 2021

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case usernameTextField:
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            passwordTextField.resignFirstResponder()
        default:
            break
        }
        return false
    }
}
