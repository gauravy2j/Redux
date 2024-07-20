//
//  ViewController.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 17/07/24.
//

import UIKit
import ReSwift

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var apiDataTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainStore.subscribe(self)
        
        initialLoads()
        
    }
    
    deinit {
        mainStore.unsubscribe(self)
    }
    
    //MARK: - Actions
    
    @IBAction func incrementButtonTapped(_ sender: UIButton) {
        
        mainStore.dispatch(IncrementAction())
        
    }

    @IBAction func decrementButtonTapped(_ sender: UIButton) {
        
        mainStore.dispatch(DecrementAction())

    }

}

//MARK: - Functions

extension ViewController{
    
    private func initialLoads(){
        
        mainStore.dispatch(FetchAPIDataAction())
        
    }
    
}



//MARK: - State Management

extension ViewController: StoreSubscriber{
    
    func newState(state: AppState) {
        
        DispatchQueue.main.async {
            
            self.counterLabel.text = "\(state.counter)"
            
            self.apiDataTextView.text = state.apiData.joined(separator: "\n")
            
        }
                
    }
    
}
