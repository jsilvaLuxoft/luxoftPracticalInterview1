//
//  BussinessLogic.swift
//  TechinicalInterviewTwo
//
//  Created by Silva, Jonathan on 16/06/20.
//

import Foundation

/*
 Notes:
 
 - Feel free to rename the file and class and add more layers to handle the UI, business logic, data/models handle, etc.
 
 - This file and class is only provided as boiler plate code,
 
*/

class HomeBusinessLogic {
    
    func fetchItems(complete: @escaping ([TodoItem], String?) -> Void) {
        let api = TodoAPI()
        api.fetchTodoItems { items, error in
            complete(items ?? [],error)
        }
    }
    
}
