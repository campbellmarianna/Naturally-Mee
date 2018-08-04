//
//  ProductListDisplay.swift
//  NaturallyMee PersonalProject
//
//  Created by Mari Campbell on 8/1/18.
//  Copyright © 2018 Marianna Campbell. All rights reserved.
//

import Foundation
import UIKit

class ProductListDisplay: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //MARK: IBOutlets

    //MARK: Properties:
     var products: [Product]!


    //MARK: Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(products.count)
    }


    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! ProductListTableViewCell
        let product = products[indexPath.item]
        
        cell.productImage.image = product.image
        cell.productLabel.text = product.name
        
        return(cell)
    }
}

