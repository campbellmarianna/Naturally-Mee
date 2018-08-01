//
//  TargetProductDisplay.swift
//  NaturallyMee PersonalProject
//
//  Created by Mari Campbell on 7/31/18.
//  Copyright © 2018 Marianna Campbell. All rights reserved.
//

import Foundation
import UIKit

class TargetProductDisplay: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var products: [Product] = [
        Product(image: #imageLiteral(resourceName: "nurtureMyBodySoapBar"), name: "Nurture My Body All-Natural Pure and Simple Soap", description: "It is handmade in small batches and cured for 30 days to give you an exquisitely gentle wash. The soothing properties of oats and aloe vera are combined with natural oils for a smooth, soft feel. An excellent choice for people with normal to sensitive skin", price: "7.99", link: "https://www.amazon.com/gp/product/B001LXSOZ8/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B001LXSOZ8&linkCode=as2&tag=naturallymee-20&linkId=2d63ff1a44d3442f6ae53511df5410dd"),
        Product(image: #imageLiteral(resourceName: "hustleButterDeluxe"), name:"Hustle Butter Deluxe", description: "Hustle Butter Deluxe is an original luxury tattoo care product for every stage in the tattoo process. It helps prepare the skin to make it more soft and supple, offers superior glide when being tattooed and can help moisturize and heal skin afterward.", price:"11.30", link: "https://www.amazon.com/gp/product/B00P2UPCJW/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B00P2UPCJW&linkCode=as2&tag=naturallymee-20&linkId=cde5e0674116abeaaa0a66c94422d735"),
        Product(image: #imageLiteral(resourceName: "pacificaBeautySeaFoamCompleteFaceWash"), name: "Pacifica Beauty Sea Foam Complete Face Wash", description: "Pacifica's Sea Foam cleanser is your first defense in your fight against aging Our best selling face wash lets you harness the power of the ocean with marine extracts Coconut water, natural sea vegetables and antioxidants come together in our gentle, sulfate-free foaming cleanser that removes daily toxins and makeup", price: "3.79", link: "https://www.amazon.com/gp/product/B00BBFOVO4/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B00BBFOVO4&linkCode=as2&tag=naturallymee-20&linkId=c95c8e5aad5a6c5352f4eb6d566ea80d"),
        Product(image: #imageLiteral(resourceName: "sunBumCoolDownHydratingAfterSunLotion"), name: "Sun Bum Cool Down Hydrating After Sun Lotion", description: "After a long lazy day in the sun, your skin needs revitalization and hydration. Sun Bum's 'Cool Down' Lotion is enriched with soothing Aloe and Vitamin E, providing an intense hydration to gently restore the skin's natural moisture balance. The light, non-greasy formula is quickly absorbed, leaving the skin smooth and soft.", price: "10.79", link: "https://www.amazon.com/gp/product/B004YAUZKM/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B004YAUZKM&linkCode=as2&tag=naturallymee-20&linkId=560a535b7f47efc2697df14f7974adde")
        
    ]
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(products.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = products[indexPath.row]
        
        return(cell)
    }
    
    
}
