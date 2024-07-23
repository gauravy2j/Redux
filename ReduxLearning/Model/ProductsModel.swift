//
//  ProductsModel.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 23/07/24.
//

import Foundation

struct ProductsModel : Decodable {
    let products : [Products]?
    let total : Int?
    let skip : Int?
    let limit : Int?

}


struct Products : Decodable {
    let id : Int?
    let title : String?
    let description : String?
    let category : String?
    let price : Double?
    let discountPercentage : Double?
    let rating : Double?
    let stock : Int?
    let tags : [String]?
    let brand : String?
    let sku : String?
    let weight : Int?
    let warrantyInformation : String?
    let shippingInformation : String?
    let availabilityStatus : String?
    let returnPolicy : String?
    let minimumOrderQuantity : Int?
    let images : [String]?
    let thumbnail : String?


}
