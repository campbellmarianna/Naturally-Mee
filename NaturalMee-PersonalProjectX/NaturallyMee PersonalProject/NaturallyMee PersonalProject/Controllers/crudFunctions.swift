//
//  crudFunctions.swift
//  NaturallyMee PersonalProject
//
//  Created by Mari Campbell on 8/10/18.
//  Copyright © 2018 Marianna Campbell. All rights reserved.
//

import Foundation
import UIKit

struct StarredProductService {
    
    private(set) var starredProducts: [Product] = []
    
    mutating func createProduct(image: UIImage, name: String, productDescription: String, price: String, link: String) {
        let newProduct = Product(image: image, name: name, productDescription: productDescription, price: price, link: link)
        
        starredProducts.insert(newProduct, at: 0)
        sortStarredProducts()
        save()
    }
    
    mutating func loadProducts() {
        let ud = UserDefaults.standard
        
        //check if entries are saved from perviously
        if let starredProductsData = ud.data(forKey: Constants.UserDefaults.userStarredProducts) {
            
            //NOTE: error handling, should this be an fatalError or a crash-less print statement?
            guard let starredProductsFromData = NSKeyedUnarchiver.unarchiveObject(with: starredProductsData) as? [Product] else {
                return print("entry data stored was not an array of MoodEntry")
            }
            
            starredProducts = starredProductsFromData
            sortStarredProducts()
        }
    }
    
    mutating func updateEntry(image newImage:UIImage, name newName: String, productDescription newProductDescription: String, price newPrice: String, link newLink: String, at index: Int) {
        let starredProductToUpdate = starredProducts[index]
        starredProductToUpdate.image = newImage
        starredProductToUpdate.name = newName
        starredProductToUpdate.productDescription = newProductDescription
        starredProductToUpdate.price = newPrice
        starredProductToUpdate.link = newLink
        
        starredProducts[index] = starredProductToUpdate
        sortStarredProducts()
        save()
    }
    
    mutating func deleteEntry(at index: Int) {
        starredProducts.remove(at: index)
        save()
    }
    
    private mutating func sortStarredProducts() {
        starredProducts.sort { (aProduct, bProduct) -> Bool in
            return aProduct.price.compare(bProduct.price) == .orderedDescending
        }
    }
    
    private func save() {
        let ud = UserDefaults.standard
        let starredProductsData = NSKeyedArchiver.archivedData(withRootObject: starredProducts)
        ud.set(starredProductsData, forKey: Constants.UserDefaults.userStarredProducts)
        ud.synchronize()
    }
}
