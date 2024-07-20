//
//  AppMiddleware.swift
//  ReduxLearning
//
//  Created by Gaurav Sharma on 20/07/24.
//

import ReSwift

func apiMiddleware() -> Middleware<AppState>{
    
    return { dispatch, getState in
        
        return { next in
            
            return { action in
                
                if let _ = action as? FetchAPIDataAction{
                    
                    fetchAPIData { data in
                        
                        dispatch(SetupApiDataAction(data: data))
                        
                    }
                    
                }
                
                next(action)
                    
            }
            
        }
        
    }
    
}


func fetchAPIData(completion: @escaping ([String]) -> Void) {
    // Sample API call
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data, error == nil else {
            completion([])
            return
        }
        
        let posts = try? JSONDecoder().decode([Post].self, from: data)
        let titles = posts?.map { $0.title } ?? []
        completion(titles)
    }.resume()
}
