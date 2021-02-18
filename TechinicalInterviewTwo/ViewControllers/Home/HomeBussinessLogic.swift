//
//  BussinessLogic.swift
//  TechinicalInterviewTwo
//
//  Created by Silva, Jonathan on 16/06/20.
//

import Foundation

// TODO: Implement the logic to handle the todoItems
// TODO: Also implement the logic to display/update/reload the info in the tableView of home.

/*
 Notes:
 
 - Feel free to rename the file and class and add more layers to handle the UI, business logic, data/models handle, etc.
 
 - This file and class is only provided as boiler plate code,
 
*/

class HomeBusinessLogic {
    
    func fetchItems() {
        let api = TodoAPI()
        api.fetchTodoItems { items, error in
            
        }
    }
    
}
