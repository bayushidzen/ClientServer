//
//  ViewController.swift
//  ClientServer
//
//  Created by Dzen on 26.12.2021.
//

import UIKit


// MARK: singleton
class Session {
    static let instance = Session()
    
    private init (){}
    
    var fio = "1112"
    var id = UUID.self
    var money = 0
}





class ViewController: UIViewController {
    
    // MARK: observer
    
    @IBOutlet weak var passWordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBAction func PressCheckButton(_ sender: Any) {
        guard let login = loginTextField.text,
              let password = passWordTextField.text
        else {return}
        
        if login != "admin" || password != "12345" {
            loginTextField.backgroundColor = UIColor(red: 240/255, green: 128/255, blue: 128/255, alpha: 1)
            passWordTextField.backgroundColor = UIColor(red: 240/255, green: 128/255, blue: 128/255, alpha: 1)
                }
        
        if login == "admin" && password == "12345" {
            loginTextField.backgroundColor = UIColor.white
            passWordTextField.backgroundColor = UIColor.white
            performSegue(withIdentifier: toSecond, sender: nil)}
    }
    
    let toSecond = "fromStartToSecond"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Session.instance.fio = "iVan iVanbl4"
        Session.instance.money = 9999
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide(_:)), name: UIResponder.keyboardDidHideNotification, object: nil)
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap(_:)))
        recognizer.cancelsTouchesInView = false
        self.view.addGestureRecognizer(recognizer)
    }
    
    @objc func onTap(_ recognizer: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    @objc func keyboardDidShow(_ notification: Notification) {
        let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue
        guard let keyboardHeight = keyboardSize?.height else { return }


     }
    
    @objc func keyboardDidHide(_ notification: Notification) {
     }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
        

        
        // Do any additional setup after loading the view.
    }




