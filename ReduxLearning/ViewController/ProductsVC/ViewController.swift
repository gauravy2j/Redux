//
//  ViewController.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 17/07/24.
//

import UIKit
import ReSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewProducts : UITableView!

    var products : [Products]? = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialLoads()
    }
    
    deinit{
        mainStore.unsubscribe(self)
    }
    
    
}

//MARK: - Functions

extension ViewController {
    
    private func initialLoads(){
        mainStore.subscribe(self)
        mainStore.dispatch(FetchApiData())
    }
    
}


//MARK: - State Management

extension ViewController: StoreSubscriber{

    func newState(state: AppState) {
        
        DispatchQueue.main.async {
            self.products = state.products
            self.tableViewProducts.reloadData()
        }
        
    }
    
}



//MARK: - TableView Methods

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableViewProducts.dequeueReusableCell(withIdentifier: "ProductsTVC", for: indexPath) as! ProductsTVC
        
        let product = products?[indexPath.row]
        cell.product = product
        
        return cell
        
    }
    
    
}
