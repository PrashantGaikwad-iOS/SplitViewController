//
//  MasterTableViewController.swift
//  SplitViewController
//
//  Created by Prashant Gaikwad on 08/10/19.
//  Copyright © 2019 Prashant Gaikwad. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {

    var countArray = [1,2,3,4,5,6,7,8,9,10]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return countArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = "\(countArray[indexPath.row])"
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.tempStr = String(countArray[indexPath.row])
        splitViewController?.showDetailViewController(vc, sender: nil)
    }

}
