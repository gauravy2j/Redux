//
//  Reducer.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 23/07/24.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    
    var state = state ?? AppState()
    
    switch action {
        
    case let action as SetupApiData:
        
        state.products = action.data
        
    default:
        
        break
        
    }
    
    return state
    
}
