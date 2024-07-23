//
//  Middleware.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 23/07/24.
//

import ReSwift

func appMiddleware() -> Middleware<AppState> {
    
    return { dispatch, getState in
        
        return { next in
            
            return { action in
                
                if let _ = action as? FetchApiData{
                    
                    getProducts { products in
                        
                        dispatch(SetupApiData(data: products))
                        
                    }
                    
                }
                
                next(action)
            }
        }
        
    }
    
}
