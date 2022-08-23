//
//  ViewController.swift
//  EVAL2-IOS
//
//  Created by Germain Buchet on 23/08/2022.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    @IBOutlet var background: UIView!
    
    
    @IBOutlet weak var imageGoogle: UIImageView!
    @IBOutlet weak var imageFacebook: UIImageView!
    //@IBOutlet weak var facebookConnect: UIButton!
    @IBOutlet weak var googleConnection: UIButton!
    @IBAction func facebookConnectionButton(_ sender: UIButton){
        
    }
    @IBAction func googleConnectionButton(_ sender: UIButton){
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        imageGoogle.tintColor = .yellow
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        background.backgroundColor = UIColor.darkGray
        
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

