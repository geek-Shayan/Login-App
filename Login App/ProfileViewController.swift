//
//  ProfileViewController.swift
//  Login App
//
//  Created by MD. SHAYANUL HAQ SADI on 15/2/23.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!

    var image = UIImage()
    var label = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        profileName.text = label
        profileImage.image = image
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
