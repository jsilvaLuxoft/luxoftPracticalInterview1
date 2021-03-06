//
//  ViewController.swift
//  TechinicalInterviewTwo
//
//  Created by Silva, Jonathan on 16/06/20.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    private let businessLogicObject = HomeBusinessLogic()
    private var todoItems = [TodoItem]() {
        didSet {
            tableView.reloadData()
        }
    }
        
    let cellIdentifier = "TodoTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        let nib = UINib(nibName: cellIdentifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        tableView.dataSource = self
        fetchTodoItems()
    }

    func fetchTodoItems() {
        businessLogicObject.fetchItems() { [weak self] items, error in
            self?.todoItems = items
        }
    }
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        // TODO: Configure the cell with the data
        return cell
    }
    
}

