//
//  ApiNetwork.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 23/07/24.
//

import Foundation


func getProducts(callback: @escaping([Products]) -> Void)  {
    let url = URL(string: "https://dummyjson.com/products")!

    let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
        
        guard error == nil else {
            print (error!.localizedDescription)
            print ("stuck in data task")
            callback([])
            return
        }
        
        let decoder = JSONDecoder()
        
        do {
            let jsonData = try decoder.decode(ProductsModel.self, from: data!)
            if let products = jsonData.products{
                callback(products)
            }
            
        }
        catch {
            callback([])
        }
            
    }
    dataTask.resume()
}
