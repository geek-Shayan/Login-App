//
//  FriendsListViewController.swift
//  Login App
//
//  Created by MD. SHAYANUL HAQ SADI on 14/2/23.
//

import UIKit

class FriendsListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    struct friendsList {
        let title: String
        let imageName: String
    }
    
    let data: [friendsList] = [
        friendsList(title: "Rachel", imageName: "model 4"),
        friendsList(title: "Max", imageName: "model 3"),
        friendsList(title: "Christine", imageName: "model 5"),
        friendsList(title: "Jenifer", imageName: "model 1"),
        friendsList(title: "Laurence", imageName: "model 2"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let friends = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = friends.title
        cell.iconImageView.image = UIImage(named: friends.imageName)
        return cell
    }
    
}
