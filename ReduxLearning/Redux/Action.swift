//
//  Action.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 23/07/24.
//

import ReSwift

struct FetchApiData: Action{}

struct SetupApiData: Action{
    let data : [Products]?
}
