//
//  FriendsListViewController.swift
//  Login App
//
//  Created by MD. SHAYANUL HAQ SADI on 14/2/23.
//

import UIKit

class FriendsListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
//    var tapBlock: (() -> Void)? = nil
    
    struct friendsList {
        let title: String
        let imageName: String
    }
    
    let data: [friendsList] = [
        friendsList(title: "Rachel", imageName: "model 4"),
        friendsList(title: "MaxRoggersChristineChristine", imageName: "model 3"),
        friendsList(title: "Christine", imageName: "model 5"),
        friendsList(title: "Jenifer", imageName: "model 1"),
        friendsList(title: "Laurence", imageName: "model 2"),
        friendsList(title: "Rachel", imageName: "model 4"),
        friendsList(title: "Max Roggers", imageName: "model 3"),
        friendsList(title: "Christine", imageName: "model 5"),
        friendsList(title: "Jenifer", imageName: "model 1"),
        friendsList(title: "Laurence", imageName: "model 2"),
        friendsList(title: "Rachel", imageName: "model 4"),
        friendsList(title: "Max Roggers", imageName: "model 3"),
        friendsList(title: "Christine", imageName: "model 5"),
        friendsList(title: "Jenifer", imageName: "model 1"),
        friendsList(title: "Laurence", imageName: "model 2"),
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
        let friends = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = friends.title
        cell.tapBlock = {
            print(indexPath.row)
            if let pushData = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController {
                        pushData.image = UIImage(named: friends.imageName)!
                        pushData.label = friends.title
                self.navigationController?.pushViewController(pushData, animated: true)
            }
        }
        cell.iconImageView.image = UIImage(named: friends.imageName)
//        cell.viewProfileButton.addTarget(self, action: #selector(ViewProfileButtonPressed), for: .touchUpInside)
        return cell
    }
    
    @objc func profileViewButtonWasTappaed(sender: UIButton){
//            if let cell = sender.superview as? MatchingUsersTVCell{
//                CellAnimator.animate(cell: cell)
//            }
//            let tag = sender.tag
//            let userid = userIdArray[tag]
        
//        guard let indexPath = tableView.indexPathForRow(at: sender.convert(sender.frame.origin, to: tableView)) else {
//                return
//            }
        
//        let friends = data[indexPath.row]
//        if let pushData = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController {
//            pushData.image = UIImage(named: friends.imageName)!
////            pushData.profileImage.image = UIImage(named: "model 5")!
//            pushData.label = friends.title
////            pushData.profileName.text = "Chiristine"
//            self.navigationController?.pushViewController(pushData, animated: true)
//        }
        
        }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let friends = data[indexPath.row]
        if let pushData = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController {
                    pushData.image = UIImage(named: friends.imageName)!
        //            pushData.profileImage.image = UIImage(named: "model 5")!
                    pushData.label = friends.title
        //            pushData.profileName.text = "Chiristine"
            self.navigationController?.pushViewController(pushData, animated: true)
        }
    }
    
    


    
//    @IBAction func ViewProfileButtonPressed(_ sender: UIButton) {
//        
//        tapBlock?()
        
//        guard let indexPath = tableView.indexPathForRow(at: sender.convert(sender.frame.origin, to: tableView)) else {
//                return
//            }
        
//        let friends = data[indexPath.row]
//        
//        let pushData = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
//        pushData.image = UIImage(named: friends.imageName)!
////            pushData.profileImage.image = UIImage(named: "model 5")!
//        pushData.label = friends.title
////        pushData.profileImage.image = UIImage(named: "model 1")
////        pushData.profileName.text = "hi"
//        self.navigationController?.pushViewController(pushData, animated: true)
    }
//}
