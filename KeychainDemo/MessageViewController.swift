//
//  MessageViewController.swift
//  KeychainDemo
//
//  Created by Adriana González Martínez on 6/16/21.
//

import UIKit
import KeychainSwift

class MessageViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    let keychain = KeychainSwift()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let ourMessage = keychain.get("secretMessage") {
            messageLabel.text = ourMessage
        }
        

    }
    
    @IBAction func deleteBtnPressed(_ sender: Any) {
        keychain.delete("secretMessage")
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
