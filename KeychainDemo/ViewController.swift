//
//  ViewController.swift
//  KeychainDemo
//
//  Created by Adriana González Martínez on 6/16/21.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {
    let keychain = KeychainWrapper()
    @IBOutlet weak var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Keychain Demo 🔐"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    @IBAction func saveBtnPressed(_ sender: Any) {
        let keychain = KeychainSwift()
        if let ourMessage = messageTextfield.text {
           if !keychain.set(ourMessage, forKey: "secretMessage") {
                print("error")
            }
        }
    }
    
}

