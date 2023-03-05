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
    @IBOutlet weak var profileGalleryBtn: UIButton!
    
    var image = UIImage()
    var name = ""
//    var gallery = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        profileName.text = name
        profileImage.image = image
    }
    
    
    @IBAction func galleryButtonPressed(_ sender: UIButton) {
        if let pushData = self.storyboard?.instantiateViewController(withIdentifier: "GalleryViewController") as? GalleryViewController {
//                    pushData.image = UIImage(named: friend.image)!
//            pushData.name = profileName.text!
            pushData.name = name
//            pushData.images = gallery
//            pushData.data = 
            self.navigationController?.pushViewController(pushData, animated: true)
        }
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
