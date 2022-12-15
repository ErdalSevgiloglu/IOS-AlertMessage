//
//  ViewController.swift
//  Alert
//
//  Created by Erdal on 16.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClick(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "iptal", style:.cancel){
            action in
            print("İptal Tıklandı.")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style:.destructive){
            action in
            print("Tamam Tıklandı.")
        }
        alertController.addAction(tamamAction)
        self.present(alertController, animated: true)
    }
    
    @IBAction func ozelAlertClick(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField {textfield in
            textfield.placeholder = "Email"
            textfield.keyboardType = .emailAddress
            
        alertController.addTextField {textfield in
            textfield.placeholder = "Password"
            textfield.isSecureTextEntry = true
            
          }
        }
    
        let kaydetAction = UIAlertAction(title: "Kaydet", style:.destructive){
            action in
            print("Kaydet Tıklandı.")
            let alinanEmail = (alertController.textFields![0] as UITextField).text!
            let alinanSifre = (alertController.textFields![1] as UITextField).text!
            
            self.label.text = "Email : \(alinanEmail) - Şifre : \(alinanSifre)"
            
        }
        
        alertController.addAction(kaydetAction)
        self.present(alertController, animated: true)
      }
    
    @IBAction func actionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "iptal", style:.cancel){
            action in
            print("Action Sheet: İptal Tıklandı.")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style:.destructive){
            action in
            print("Action Sheet: Tamam Tıklandı.")
        }
        alertController.addAction(tamamAction)
        self.present(alertController, animated: true)
        
    }
    
    
    
    
 }

