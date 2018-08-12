//
//  TargetProductDisplay.swift
//  NaturallyMee PersonalProject
//
//  Created by Mari Campbell on 7/31/18.
//  Copyright © 2018 Marianna Campbell. All rights reserved.
//

import Foundation
import UIKit

class TargetProductDisplay: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
 // Took out UICollectionViewDelegateFlowLayout
    
    //MARK: IBOutlet:
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    //MARK: Properties
    var categories: [Category] =
        [Category(name: "Skin", categoryImage: #imageLiteral(resourceName: "skincarePic2"), products:
            [Product(image: #imageLiteral(resourceName: "nurtureMyBodySoapBar"), name: "Nurture My Body All-Natural Pure and Simple Soap", productDescription: "It is handmade in small batches and cured for 30 days to give you an exquisitely gentle wash. The soothing properties of oats and aloe vera are combined with natural oils for a smooth, soft feel. An excellent choice for people with normal to sensitive skin", price: "7.99", link: "https://www.amazon.com/Nurture-My-Body-All-Natural-Fragrance/dp/B001LXSOZ8"),                                                                                                                                                                                                                                                                                               Product(image: #imageLiteral(resourceName: "pacificaBeautySeaFoamCompleteFaceWash"), name: "Pacifica Beauty Sea Foam Complete Face Wash", productDescription: "Pacifica's Sea Foam cleanser is your first defense in your fight against aging Our best selling face wash lets you harness the power of the ocean with marine extracts Coconut water, natural sea vegetables and antioxidants come together in our gentle, sulfate-free foaming cleanser that removes daily toxins and makeup", price: "3.79", link: "https://www.amazon.com/Pacifica-Beauty-Foam-Complete-Face/dp/B00BBFOVO4"),                                                                                                                                                                 Product(image: #imageLiteral(resourceName: "sunBumConditionerSpray"), name: "Sun Bum Cool Down Hydrating After Sun Lotion", productDescription: "After a long lazy day in the sun, your skin needs revitalization and hydration. Sun Bum's 'Cool Down' Lotion is enriched with soothing Aloe and Vitamin E, providing an intense hydration to gently restore the skin's natural moisture balance. The light, non-greasy formula is quickly absorbed, leaving the skin smooth and soft.", price: "10.79", link: "https://www.amazon.com/Sun-Bum-Hydrating-After-Lotion/dp/B015X6ATQK"),
             Product(image: #imageLiteral(resourceName: "andalouNaturalsFacialLotion"), name: "Andalou Naturals Ultra Sheer Daily Defense Facial Lotion", productDescription: "Fruit stem cell complex and resveratrol CoQ10, super antioxidants, boost dermal vitality as lightweight hydration and ultra-sheer SPF 18 provide daily, easy to wear protection.", price:"$9.75", link: "https://www.amazon.com/Andalou-Naturals-Resveratrol-Antioxidants-Lightweight/dp/B0052P0XBO/ref=sr_1_2_s_it?s=beauty&ie=UTF8&qid=1533696608&sr=1-2&keywords=Vegan%2BSkincare&refinements=p_n_theme_browse-bin%3A370299011&th=1"),
             Product(image: #imageLiteral(resourceName: "herbalUltraLipBalm"), name: "Herbal Ultra Moisturizing Lip Balm", productDescription: "Hempz Lip Care products help smooth fine lines and wrinkles, making skin appear healthier and younger-looking.", price:"$5.98", link: "https://www.amazon.com/Herbal-Ultra-Moisturizing-Lip-Balm/dp/B003SWVV8C/ref=sr_1_45_s_it?s=beauty&ie=UTF8&qid=1533697471&sr=1-45&keywords=Vegan+Skincare"),
             Product(image: #imageLiteral(resourceName: "pacificaBeautyFaceCream"), name: "Pacifica Beauty Dreamy Youth Day & Night Face Cream", productDescription: "A highly effective anti-aging, everyday natural moisturizer Peptides, high potency antioxidants, floral stem cells and advanced natural extracts come together in our exclusive superpower fleuracell complex, with ingredients shown to improve the overall appearance of skin and help minimize the look of fine lines and wrinkles, deeply moisturize and protect, help support collagen and promotes a lifting effect on your skin.", price: "$15.19", link: "https://www.amazon.com/Pacifica-Beauty-Dreamy-Youth-Night/dp/B00BBFPX8W/ref=sr_1_8_s_it?s=beauty&ie=UTF8&qid=1533696396&sr=1-8&keywords=Vegan+Skincare")]),
         
         Category(name: "Hair", categoryImage: #imageLiteral(resourceName: "haircarePic") , products: [Product(image: #imageLiteral(resourceName: "naturesGateCleansingShampoo"), name: "Nature's Gate Natural Herbal Daily Cleansing Shampoo", productDescription: "Nature’s Gate offers a cohesive line of wholistic natural beauty products from hair to toes, economically-sound without sacrificing substance or quality.", price: "10.64", link: "https://www.amazon.com/Natures-Gate-Herbal-Cleansing-Shampoo/dp/B00013Z29A"), Product(image: #imageLiteral(resourceName: "sunBumConditionerSpray"), name: "Sun Bum Revitalizing 3-in-1 Leave-In Hair Conditioner Spray", productDescription: "Sun Bum Beach Formula 3-In-1 Leave-In Conditioner is, by far, the most 'borrowed' item from our beach house and is perfect for all hair types! It instantly penetrates the hair shaft without weighing the hair down.", price: "$11.36", link: "https://www.amazon.com/Sun-Bum-Revitalizing-Conditioner-Protection/dp/B00TUJW9L0/ref=sr_1_4_a_it?ie=UTF8&qid=1533702865&sr=8-4&keywords=vegan+hair+care"), Product(image: #imageLiteral(resourceName: "obiaDeepConditioner"), name: "OBIA Naturals Babassu Deep Conditioner", productDescription: "Immerse your curls and kinks in this deeply penetrating, fortifying treatment that repairs and reconstructs all hair textures and hair types. Strand-strengthening babassu oil will nourish, repair elasticity, soften and add shine to your hair.", price: "$13.59", link: "https://www.amazon.com/OBIA-Naturals-Babassu-Deep-Conditioner/dp/B00LS3YP8G/ref=sr_1_6_s_it?s=beauty&ie=UTF8&qid=1533703045&sr=1-6&keywords=vegan+hair+care&refinements=p_n_theme_browse-bin%3A370299011"), Product(image: #imageLiteral(resourceName: "leaveInConditioner"), name: "Leave-In Conditioner Hair Moisturizer Cream", productDescription: "This leave-in conditioner is based on pure Vegan ingredients, like Olive, Coconut Oil, Castor and Vitamin E, to deeply penetrate and hydrate the hair shaft and scalp, and a blend of essential oils that soothe the scalp, strengthen the hair shaft, smell natural, and make your hair Shine, Shine, Shine!", price: "$18.04", link: "https://www.amazon.com/Leave-Conditioner-Hair-Moisturizer-Cream/dp/B00KPU21DE/ref=sr_1_3_sspa?s=beauty&ie=UTF8&qid=1533703045&sr=1-3-spons&keywords=vegan+hair+care&refinements=p_n_theme_browse-bin%3A370299011&psc=1"), Product(image: #imageLiteral(resourceName: "dermaEShampoo"), name: "DERMA E Scalp Relief Shampoo", productDescription: "This doctor-developed, clinically tested formula works in four ways to gently cleanse, de-flake, soothe and nourish the scalp and hair. Using our proprietary Therapeutic Psorzema Herbal Blend plus healthful vitamins and botanicals, this shampoo calms a dandruff-prone, itchy, irritated scalp and refreshes the hair, from root to tip.", price: "$13.31", link: "https://www.amazon.com/DERMA-Relief-Shampoo-Psorzema-Herbal/dp/B00VU68T6U/ref=sr_1_26_s_it?s=beauty&ie=UTF8&qid=1533703045&sr=1-26&keywords=vegan+hair+care&refinements=p_n_theme_browse-bin%3A370299011"), Product(image: #imageLiteral(resourceName: "mineralFusionConditioner"), name: "Mineral Fusion Conditioner", productDescription: "Smoothing conditioner contains Coconut Oil and Panthenol to add weightless hydration leaving hair silky smooth.", price: "$7.25", link: "https://www.amazon.com/Mineral-Fusion-Conditioner-Volumizing-Ounce/dp/B003BHV0EY/ref=sr_1_29_s_it?s=beauty&ie=UTF8&qid=1533703045&sr=1-29&keywords=vegan%2Bhair%2Bcare&refinements=p_n_theme_browse-bin%3A370299011&th=1")]),
 
         Category(name: "Makeup", categoryImage: #imageLiteral(resourceName: "makeupPic2") , products: [Product(image: #imageLiteral(resourceName: "auNaturaleCreamConcealer"), name: "Au Naturale Organic Creme Concealer in Ecru", productDescription: "Ecru: for the fairest skin tones with neutral to cool undertones. Our Completely Covered Creme Concealer introduces pure pigments to organic oils because your skin deserves to be both flawless and nourished.", price: "$26.00", link: "https://www.amazon.com/Au-Naturale-Organic-Creme-Concealer/dp/B0155Y0Q18/ref=sr_1_1_sspa?s=beauty&ie=UTF8&qid=1533705053&sr=1-1-spons&keywords=vegan%2Bmakeup&th=1"), Product(image: #imageLiteral(resourceName: "pacificaEyeShadow"), name: "Pacifica Beauty 10 Well Eye Shadow", productDescription: "Pacifica's Pink Nudes Mineral Eyeshadow Palette is a collection of 10 coconut infused eyeshadows in matte pinks, warm nudes and browns with luminizing highlighters for pop.", price: "$13.99", link: "https://www.amazon.com/Pacifica-Beauty-Shadow-Nudes-Ounce/dp/B071WQMP29/ref=sr_1_19_s_it?s=beauty&ie=UTF8&qid=1533705053&sr=1-19&keywords=vegan%2Bmakeup&th=1"), Product(image: #imageLiteral(resourceName: "elfFinishFoundationLiquid"), name: "e.l.f. Flawless Finish Foundation Liquid Makeup", productDescription: "Our Flawless Finish Foundation gives you a natural, satin-matte coverage that blends effortlessly for a flawless look. The lightweight, oil-free formula feels breathable on the skin, while covering any discoloration.", price: "$6.00", link: "https://www.amazon.com/l-f-Foundation-Semi-Matte-Long-Lasting-Porcelain/dp/B004X1QCC2/ref=sr_1_54_s_it?s=beauty&ie=UTF8&qid=1533705053&sr=1-54&keywords=vegan%2Bmakeup&th=1"), Product(image: #imageLiteral(resourceName: "dermaEMakeupRemover"), name: "DERMA E Makeup Remover with Chamomile and Cucumber Extracts", productDescription: "Safely remove all kinds of makeup with this gentle, fragrance-free, oil free makeup remover. Effectively sweeps away waterproof mascara, longwear eye liner, transferproof lipstick and long-lasting face makeup.", price: "$12.51", link: "https://www.amazon.com/Makeup-Remover-Chamomile-Cucumber-Extracts/dp/B000O752UM/ref=sr_1_45_s_it?s=beauty&ie=UTF8&qid=1533706061&sr=1-45&keywords=vegan+makeup"), Product(image: #imageLiteral(resourceName: "mineralMascara"), name: "Mineral Mascara by EVXO", productDescription: "EVXO’s Organic Mascara is made with natural and organic ingredients to keep your lashes strong, healthy and looking longer than ever! Our Natural Mascara is the perfect replacement for your average harmful chemical drugstore mascara!", price: "$18.99", link: "https://www.amazon.com/Mineral-Mascara-EVXO-Natural-Ingredients/dp/B01KIQEMJU/ref=sr_1_55_s_it?s=beauty&ie=UTF8&qid=1533706243&sr=1-55&keywords=vegan+makeup"), Product(image: #imageLiteral(resourceName: "elfContourMakeupPalette"), name: "e.l.f. Cosmetics Contour Makeup Palette", productDescription: "Our amazing Contour Palette provides four different shades to mix and match for different skin tones. Sculpt, shade and brighten your complexion with this professional quality contouring set. Enjoy a beautiful, nourished complexion all day with our Vitamin E enriched Contour Palette.", price: "$6.00", link: "https://www.amazon.com/l-f-Cosmetics-Contour-Sculpting-Brightening/dp/B01D1DRCTY/ref=sr_1_86_s_it?s=beauty&ie=UTF8&qid=1533706243&sr=1-86&keywords=vegan+makeup")]),
    
         Category(name: "Personal Care", categoryImage: #imageLiteral(resourceName: "personalCarePic") , products: [Product(image: #imageLiteral(resourceName: "hustleButterDeluxe"), name: "Hustle Butter Deluxe", productDescription: "Hustle Butter Deluxe is an original luxury tattoo care product for every stage in the tattoo process. It helps prepare the skin to make it more soft and supple, offers superior glide when being tattooed and can help moisturize and heal skin afterward.", price: "$17.95", link: "https://www.amazon.com/Hustle-Butter-Deluxe-Moisturizes-Petroleum-Based/dp/B00AEVIIYK/ref=sr_1_1_a_it?ie=UTF8&qid=1533702045&sr=8-1&keywords=hustle%2Bbutter%2Bdeluxe&th=1"), Product(image: #imageLiteral(resourceName: "veganHerbalBodyLotion"), name: "Vegan Herbal Body Lotion", productDescription: "Turmeric Herbal Body Lotion hydrates skin while also addressing skin concerns such as body acne, dryness, oiliness. Perfect for all skin types and daily use.", price: "$12.95", link: "https://www.amazon.com/Vegan-Herbal-Body-Lotion-Vitamin/dp/B00G70CPHS/ref=sr_1_32_s_it?s=beauty&ie=UTF8&qid=1533696759&sr=1-32&keywords=Vegan%2BSkincare&refinements=p_n_theme_browse-bin%3A370299011&th=1"), Product(image: #imageLiteral(resourceName: "himalayaWhiteningToothpaste"), name: "Himalaya Whitening Toothpaste", productDescription: "Our Whitening Complete Care Simply Mint uses a powerful combination of Pineapple and Papaya enzymes to whiten teeth, Mint to freshen breath, and Neem, Pomegranate and Xylitol to support healthy-looking gums.", price: "$5.95", link: "https://www.amazon.com/Himalaya-Whitening-Toothpaste-Flouride-Free-SLS-Free/dp/B01CWYEUWK/ref=sr_1_4_s_it?s=beauty&ie=UTF8&qid=1533704055&sr=1-4&keywords=vegan%2Btoothpaste&th=1"), Product(image: #imageLiteral(resourceName: "bulldogAfterShaveBalm"), name: "Bulldog Mens Skincare and Grooming Original After Shave Balm", productDescription: "Bulldog is man's best friend. Designed from the ground up with male skin care as their focus, all Bulldog products combine the best of nature and science to work simply and effectively while dealing with the specific issues faced by men's skin.", price: "$9.05", link: "https://www.amazon.com/Bulldog-Mens-Skincare-Grooming-Original/dp/B07925241H/ref=sr_1_9_s_it?s=beauty&ie=UTF8&qid=1533707345&sr=1-9&keywords=vegan%2Bpersonal%2Bcare&th=1"), Product(image: #imageLiteral(resourceName: "cosmeticsHalalNailPolish"), name: "786 Cosmetics Halal Nail Polish", productDescription: "Fez by 786 Cosmetics is a sparkly light turquoise that just catches the eye. This color is inspired by the stunning blue, mint, and turquoise tile work you’ll find in Fez, Morocco.", price: "$9.99", link: "https://www.amazon.com/786-Cosmetics-Halal-Nail-Polish/dp/B0752VVD7G/ref=sr_1_1_sspa?s=beauty&ie=UTF8&qid=1533704781&sr=1-1-spons&keywords=vegan%2Bnail%2Bpolish&th=1"),Product(image: #imageLiteral(resourceName: "karmaOrganicNailPolish"), name: "Karma Organic Nail Polish", productDescription: "Karma Organic Nail polish is designed to be easy and gentle on your nails available in more than 100 exiting colors of 100% Organic Nail Polish. Made in the USA.", price: "$9.99", link: "https://www.amazon.com/Karma-Organic-Non-Toxic-Cruelty-Free-FARMERS/dp/B0046LHRIC/ref=sr_1_11_s_it?s=beauty&ie=UTF8&qid=1533704905&sr=1-11&keywords=vegan+nail+polish")])]
    
    let categoryDisplayImages = [ #imageLiteral(resourceName: "skincarePic2"), #imageLiteral(resourceName: "haircarePic"), #imageLiteral(resourceName: "makeupPic2"), #imageLiteral(resourceName: "personalCarePic")]
        
    //MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*Example on how to connect storyboard view to delegate and data source in code:
              categoryCollectionView.delegate = self
              categoryCollectionView.dataSource = self */
            categoryCollectionView.delegate = self
            categoryCollectionView.dataSource = self
        
        let layout = self.categoryCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsetsMake(0, 5, 0, 5)
        layout.minimumInteritemSpacing = 2
        layout.itemSize = CGSize(width: (self.categoryCollectionView.frame.size.width - 20)/2, height: self.categoryCollectionView.frame.size.height/3)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Collection View for Categories
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
        
        //Code for display images
        return categoryDisplayImages.count
        //Trying it out:
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let categoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CollectionViewCell
        print(categories.count)
        let category = categories[indexPath.item]
        //Carry over data about the category
        categoryCell.categoryLabel.text = category.name
        
        //Create border
        categoryCell.layer.borderColor = UIColor.lightGray.cgColor
        categoryCell.layer.borderWidth = 0.5
        
        //Round corners
            //categoryCell.layer.cornerRadius = 8
            //categoryCell.layer.masksToBounds = true
        return categoryCell}
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "segueTableView", sender: categories[indexPath.item].products)
//        let categoryCell = collectionView.cellForItem(at: indexPath)
//        categoryCell?.layer.borderColor = UIColor.gray.cgColor
//        categoryCell?.layer.borderWidth = 2
    }
    
//    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        let categoryCell = collectionView.cellForItem(at: indexPath)
//        categoryCell?.layer.borderColor = UIColor.lightGray.cgColor
//        categoryCell?.layer.borderWidth = 0.5
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else{return}
        if identifier == "segueTableView" {
            let destination = segue.destination as! ProductListDisplay
            destination.products = sender as! [Product]}
    }
    //MARK: Change font of Navigation Bar title:
//    [self.navigationController?.navigationBar.titleTextAttributes]
    
    
}
