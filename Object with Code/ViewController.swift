//
//  ViewController.swift
//  Object with Code
//
//  Created by smeetbhatt on 13/10/17.
//  Copyright © 2017 smeetbhatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myLabel = UILabel()
    let myButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        print("Width is \(width)")
        print("height is \(height)")
        myLabel.text = "Creating object with code..."
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width*0.1, y: height*0.1, width: width*0.8, height: 40)
        view.addSubview(myLabel)
        myButton.frame = CGRect(x: width * 0.2, y: height * 0.5, width: width * 0.6 , height: 50)
        myButton.setTitle("Coding Button", for: UIControlState.normal)
        myButton.setTitleColor(UIColor.red, for: UIControlState.normal)
        view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControlEvents.touchUpInside)
    }
    @objc func myAction(){
        print("You have clicked!!!")
        self.myButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

