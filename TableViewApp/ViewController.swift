//
//  ViewController.swift
//  TableViewApp
//
//  Created by Haider on 24/10/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    // 2D Array with names of friends and actors/sportspeople
    let my2DArray = [["John", "Alice", "David", "Sophie"],
                     ["Iron Man", "Hulk", "Black Widow", "Captain America", "Thor"]]

    // Number of sections in the table
    func numberOfSections(in tableView: UITableView) -> Int {
        return my2DArray.count
    }

    // Number of rows in each section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return my2DArray[section].count
    }

    // Content of each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = my2DArray[indexPath.section][indexPath.row]
        return cell
    }

    // Titles for each section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Friends" : "Actors/Sportspeople"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

