//
//  ViewController.swift
//  EVAL2-IOS
//
//  Created by Germain Buchet on 23/08/2022.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonCloseGoogle: UIButton!
    @IBOutlet weak var buttonCloseFacebook: UIButton!
    /*
    func closeGoogle(){
        ViewController.dismiss
    }
     */

    @IBAction func closeGoogle(_ sender: Any) {
        self.dismiss(animated: true)
    }
    @IBAction func closeFacebook(_ sender: Any) {
        self.dismiss(animated: true)
    }
    /*
    override func viewWillAppear(_ animated: Bool) {
        imageGoogle.tintColor = .yellow
    }
     */
    
    func showAlert(title : String, message : String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    func checkRegex(email : String)-> Bool{
        //let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}" check si drgdrg@blabla.com moi je veux srfgrssg@ et ok
        let emailRegEx = "[A-Z0-9a-z._%+-]+@"
               
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        
        if predicate.evaluate(with: email) {
                    //showAlert(title: <#T##String#>, message: <#T##String#>)
            return true
                } else{
                    showAlert(title: "Error email", message: "The email doesn't contain an @, please enter a valid one")
                    return false
                }

                  
    }
    func openNextView(){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "PokemonTableView")
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func connectionGoogleButton(_ sender: Any) {
        if loginTextfieldGoogle.text!.isEmpty{
            
            showAlert(title: "Error login", message: "The login is empty ! please enter one.")
        }
        if passwordTextfielGoogle.text!.isEmpty{
            
            showAlert(title: "Error password", message: "The password is empty ! please enter one.")
        }
        
        //check regex et open vue suivante
        if checkRegex(email: loginTextfieldGoogle.text!) == true {
            openNextView()
        }
        
    }
    @IBAction func connectionFacebookButton(_ sender: Any) {
        if loginTextfieldFacebook.text!.isEmpty{
            
            showAlert(title: "Error login", message: "The login is empty ! please enter one.")
        }
        if passwordTextfieldFacebook.text!.isEmpty{
            
            showAlert(title: "Error password", message: "The password is empty ! please enter one.")
        }
        
        //check regex et open vue suivante
        if checkRegex(email: loginTextfieldFacebook.text!) == true {
            openNextView()
        }
        
    }
    @IBOutlet weak var loginTextfieldGoogle: UITextField!
    @IBOutlet weak var passwordTextfielGoogle: UITextField!
    
    @IBOutlet weak var loginTextfieldFacebook: UITextField!
    @IBOutlet weak var passwordTextfieldFacebook: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //background.backgroundColor = UIColor.darkGray
        
        //let heightConstraint = NSLayoutConstraint(item: textField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        
        //imageGoogle.tintColor =
        
        /*
        let imageGoogle = UIImage(named: "google_ico")?.withRenderingMode(.alwaysTemplate)
        let imageView = UIImageView(image: image)
        imageView.tintColor = .yellow
         */
        
        /*
        alertController.addTextField { textField in
            let heightConstraint = NSLayoutConstraint(item: textField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
            textField.addConstraint(heightConstraint)
        }
         */
    }


}

