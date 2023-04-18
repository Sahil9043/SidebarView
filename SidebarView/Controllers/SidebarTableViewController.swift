//
//  SidebarTableViewController.swift
//  SidebarView
//
//  Created by Lalaiya Sahil on 13/04/23.
//

import UIKit

struct Option {
    var name: String
    var image: String
}
class SidebarTableViewController: UITableViewController {
    
    //MARK: Navigation Controller
    var arrOption: [Option] = []
    var selectedIndex: Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        loadOption()
     }
    
    private func loadOption(){
      //  let blankOption: Option = Option(name: "", image: "")
        let homeOption: Option = Option(name: "Home Page", image: "house")
        let profileOption: Option = Option(name: "Profile Page", image: "fireplace")
        let contectOption: Option = Option(name: "Contect Page", image: "book")

        arrOption = [homeOption, profileOption, contectOption]
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrOption.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
        cell.selectionStyle = .none
        if selectedIndex == indexPath.row {
            cell.textLabel?.textColor = .blue
        } else {
            cell.textLabel?.textColor = .black
        }
        cell.textLabel?.text = arrOption[indexPath.row].name
        cell.imageView?.image = UIImage(systemName: arrOption[indexPath.row].image)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        tableView.reloadData()
        switch indexPath.row {
        case 0: performSegue(withIdentifier: "home_seguler", sender: nil)
        case 1: performSegue(withIdentifier: "profile_seguler", sender: nil)
        case 2: performSegue(withIdentifier: "Contect_seguler", sender: nil)
        default: performSegue(withIdentifier: "profile_seguler", sender: nil)

        }
    }
}
