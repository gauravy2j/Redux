//
//  ProductsTVC.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 23/07/24.
//

import UIKit

class ProductsTVC: UITableViewCell{
    
    @IBOutlet weak var lblTitle : UILabel!
    @IBOutlet weak var lblCategory : UILabel!
    @IBOutlet weak var lblPrice : UILabel!

    var product : Products?{
        
        didSet {
            
            if let title = product?.title{
                lblTitle.text = title
            }
            
            if let catgory = product?.category{
                lblCategory.text = catgory
            }
            
            if let price = product?.price{
                lblPrice.text = "$\(price)"
            }
            
        }
        
    }
    
}
