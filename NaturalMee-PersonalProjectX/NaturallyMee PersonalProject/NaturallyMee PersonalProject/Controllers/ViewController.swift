//
//  ViewController.swift
//  NaturallyMee PersonalProject
//
//  Created by Mari Campbell on 7/24/18.
//  Copyright © 2018 Marianna Campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: IBOutlets
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
   //Navigation Bar Adsent in root view -START CODE-----------------------------------------------------------------------
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    //Navigation Bar Adsent in root view -END CODE------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//
//        navigationController?.setNavigationBarHidden(false, animated: true)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

      //MARK: IBActions

    @IBAction func naturalHairAndSkincareButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "TargetProductDisplay", bundle: nil)
        let TargetProductDisplay = storyboard.instantiateViewController(withIdentifier: "TargetProductDisplay")
        self.present(TargetProductDisplay, animated: true, completion: nil)
    }
    

}

