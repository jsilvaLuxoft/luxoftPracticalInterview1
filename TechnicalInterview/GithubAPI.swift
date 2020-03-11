//
//  FactsAPI.swift
//  TechnicalInterview
//
//  Created by Silva, Jonathan on 3/11/20.
//  Copyright © 2020 LuxoftInterview. All rights reserved.
//

import Foundation

struct GithubAPI {
    
    let baseUrl = "https://api.github.com"
    
    // You can use this url: https://api.github.com to see github api available endpoints.
    // But we included here the base ones for you
    
    // Use https://api.github.com/search/repositories?q={query}{&page,per_page,sort,order} to fetch repos by name
    // Params:
    //  q: query (name of the repo to search)
    
    func route(_ endpoint: String) -> String {
        return String(format: "%@/%@", baseUrl, endpoint)
    }
    
    func query(route: String, query: [String: Any]) -> String {
        var mutableQuery = "?"
        for queryElement in query {
            let q = "\(queryElement.key)=\(queryElement.value)"
            mutableQuery = String(format: "%@%@&", mutableQuery, q)
        }
        mutableQuery.removeLast(1)
        return route + mutableQuery
    }
    
    func searchRepository<T: Codable>(searchValue: String, type: T.Type, callback: @escaping (T?, String?) -> Void) {
        let endpoint = route("search/repositories")
        let queryEndpoint = query(route: endpoint, query: ["q": searchValue])
        guard let url = URL(string: queryEndpoint) else {
            callback(nil, "Could not reach \(endpoint)")
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let responseData = data else {
                callback(nil, error?.localizedDescription)
                return
            }
            do {
                let object = try JSONDecoder().decode(type, from: responseData)
                callback(object, nil)
            } catch (let e) {
                print(e)
                callback(nil, e.localizedDescription)
            }
        }
        task.resume()
    }
    
}
