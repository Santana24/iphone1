//I, Andres Santana, student number 000780301, certify that this material is my original work.
//No other person's work has been used without due acknowledgement and I have not made my work available to anyone else.

//  TabBarViewController.swift
//  Converter_iOS_App
//


import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
       // tabBar.frame = CGRect(x: 0, y: 45, width: UIScreen.main.bounds.width, height: 62)
    }
  
}
