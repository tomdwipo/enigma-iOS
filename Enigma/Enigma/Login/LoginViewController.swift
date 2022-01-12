//
//  LoginViewController.swift
//  Enigma
//
//  Created by Tommy on 06/01/22.
//

import UIKit
import Kingfisher
import BaseNetwork

class LoginViewController: UIViewController {

    @IBOutlet weak var icon: RoundedImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.methodOfReceivedNotification(notification:)), name: Notification.Name("NotificationIdentifier"), object: nil)


        usernameTextField.delegate = self
        passwordTextField.delegate = self
        
        
        let url = URL(string: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg")
//        icon.image = UIImage(named: "Vector")
//         icon.kf.setImage(with: url)
        icon.image = UIImage(named: "Vectors", in: BundleNetwork.bundle(), compatibleWith: nil)
        
        
        
    }
    
    @objc func methodOfReceivedNotification(notification: Notification) {
        self.usernameTextField.text = "gfdg"
    }
    
    func fetch(_ completion: () -> Void) {
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: Notification.Name("NotificationIdentifier"), object: nil)
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
            showAlert(message: validate.message)
            
            UserDefaultsHelper.save(value: 543, key: .isLogin)
            
            
            let data = UserDefaultsHelper.get(type: Double.self, key: .isLogin)
            print("\(UserDefaultsKey.isLogin.rawValue)")
            
            
            var model = LoginModel()
            model.isLogin = false
            model.message = "not oke"
            
            UserDefaultsHelper.save(dataModel: model, key: UserDefaultsKey.isLoginModel)
            
            let dataModel = UserDefaultsHelper.get(typeModel: LoginModel.self, key: UserDefaultsKey.isLoginModel)
            
            print("dataModel \(dataModel?.message) \(dataModel?.isLogin)")
            
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
