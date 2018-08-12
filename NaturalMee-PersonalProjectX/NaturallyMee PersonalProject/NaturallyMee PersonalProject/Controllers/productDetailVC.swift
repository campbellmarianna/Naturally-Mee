//
//  productDetailVC.swift
//  NaturallyMee PersonalProject
//
//  Created by Mari Campbell on 8/6/18.
//  Copyright © 2018 Marianna Campbell. All rights reserved.
//
//Basicly you need persistense core 
import Foundation
import UIKit

class productDetailVC: UIViewController {
    //MARK: Properties
    var products: Product?
    
    //MARK: IBOutlet
    @IBOutlet weak var productDetailImageView: UIImageView!
    @IBOutlet weak var productDetailTitleLabel: UILabel!
    @IBOutlet weak var productDetailPriceLabel: UILabel!
    @IBOutlet weak var productDetailDescriptionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Set background Color
            //view.backgroundColor = UIColor.lightGray
        
        if let productName = products?.name,
           let productImage = products?.image,
           let productPrice = products?.price,
           let productDescription = products?.productDescription {
            
          productDetailImageView.image = productImage
          productDetailTitleLabel.text = productName
          productDetailPriceLabel.text = productPrice
          productDetailDescriptionLabel.text = productDescription}
        else { print("Something went wrong.")}
    
    }
    
    //MARK: IBAction Methods
    @IBAction func productDetailBuyButton(_ sender: UIButton) {
        let url = URL(string:(products?.link)!)
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    //kind of cheat and use a hack
    let starButton = UIButton(type: .system)
    
}
