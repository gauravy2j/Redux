//
//  Store.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 23/07/24.
//

import ReSwift

let mainStore = Store(
    reducer: appReducer,
    state: nil,
    middleware:[appMiddleware()]
)
