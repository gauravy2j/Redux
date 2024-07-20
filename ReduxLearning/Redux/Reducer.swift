//
//  Reducer.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 17/07/24.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState{
    
    var state = state ?? AppState()
    
    switch action {
        
    case _ as IncrementAction:
        
        state.counter += 1
        
    case _ as DecrementAction:
        
        state.counter -= 1
        
    case let action as SetupApiDataAction:
        
        state.apiData = action.data
        
    default:
        
        break
        
    }
    
    return state
    
}
