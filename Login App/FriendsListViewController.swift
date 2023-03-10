//
//  FriendsListViewController.swift
//  Login App
//
//  Created by MD. SHAYANUL HAQ SADI on 14/2/23.
//

import UIKit

class FriendsListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    struct friendsList {
        let name: String
        let image: String
        let gallery: [String]
    }
    
    let data: [friendsList] = [
        friendsList(name: "Rachel", image: "model 4", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Max Roggers Christine", image: "model 3", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Christine", image: "model 5", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Jenifer", image: "model 1", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Laurence", image: "model 2", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Rachel", image: "model 4", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Max Roggers", image: "model 3", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Christine", image: "model 5", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Jenifer", image: "model 1", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Laurence", image: "model 2", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Rachel", image: "model 4", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Max Roggers", image: "model 3", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Christine", image: "model 5", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Jenifer", image: "model 1", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
        friendsList(name: "Laurence", image: "model 2", gallery: ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let friend = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Table_View_Cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = friend.name
        cell.iconImageView.image = UIImage(named: friend.image)
        cell.tapBlock = {
            print(indexPath.row)
            if let pushData = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController {
                pushData.image = UIImage(named: friend.image)!
                pushData.name = friend.name
//                pushData.gallery = friend.gallery
                self.navigationController?.pushViewController(pushData, animated: true)
            }
        }
//        cell.viewProfileButton.addTarget(self, action: #selector(ViewProfileButtonPressed), for: .touchUpInside)
        return cell
    }
    

//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//       return "Header \(section)"
//    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        <#code#>
//    }

    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let friend = data[indexPath.row]
        if let pushData = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController {
            pushData.image = UIImage(named: friend.image)!
            pushData.name = friend.name
            tableView.deselectRow(at: indexPath, animated: true)
            self.navigationController?.pushViewController(pushData, animated: true)
        }
    }

}
