//
//  File.swift
//  TechinicalInterviewTwo
//
//  Created by Silva, Jonathan on 16/06/20.
//

import Foundation

protocol API {
    var baseUrl: String { get }
}

extension API {
    var baseUrl: String {
        return "https://602be355ef26b40017f14ea6.mockapi.io/api/"
    }
}

struct TodoAPI: API {
    
    let endpoint = "todo"
    
    // NOTES:
    //  - Improve the complete block. For example: using Result<[TodoItem], APIError> or a similar approach
    //  - If you want to use a special network framework like Alamofire, Moya, etc. Feel free to use it.
    
    func fetchTodoItems(complete: @escaping ([TodoItem]?, String?) -> Void) {
        let stringUrl = baseUrl + endpoint
        guard let url = URL(string: stringUrl) else {
            complete(nil, "Invalid URL")
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            DispatchQueue.main.async {
                guard let data = data else {
                    complete(nil, "No response")
                    return
                }
                
                let items = try? JSONDecoder().decode([TodoItem].self, from: data)
                complete(items, error?.localizedDescription)
            }
        }.resume()
    }
    
    func createTodoItem(item: TodoItem, complete: @escaping (Error?) -> Void) {
        // Endpoint: Same endpoint as GET
        // Method: POST
        // Body: The same structure as TodoItem
        
        // Response: The newly created item (same structure as TodoItem.
        // The mockApi doesnt create an item with the data you
        // specify. It creates a new random TodoItem
        // For the excercise sake, display the same object created in the Create screen
    }
    
}
