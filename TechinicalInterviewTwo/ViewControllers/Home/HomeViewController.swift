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
    let cellIdentifier = "TodoTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        let nib = UINib(nibName: cellIdentifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        businessLogicObject.fetchItems()
    }

}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        // TODO: Implement cell configuration
        return cell
    }
    
}

