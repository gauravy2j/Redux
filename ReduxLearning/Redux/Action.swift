//
//  Action.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 17/07/24.
//

import ReSwift

struct IncrementAction : Action {}

struct DecrementAction : Action {}

struct SetupApiDataAction: Action {
    
    let data : [String]
    
}

struct FetchAPIDataAction: Action {}

