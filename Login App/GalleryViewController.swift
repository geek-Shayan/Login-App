//
//  GalleryViewController.swift
//  Login App
//
//  Created by MD. SHAYANUL HAQ SADI on 22/2/23.
//

import UIKit

class GalleryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var galleryLabel: UILabel!

    var images = ["gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10","gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10","gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]
    var labels = ["photo-1","photo-2","photo-3","photo-4","photo-5","photo-6","photo-7","photo-8","photo-9","photo-10","gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10","gallery 1","gallery 2","gallery 3","gallery 4","gallery 5","gallery 6","gallery 7","gallery 8","gallery 9","gallery 10"]

    var name = ""
//    var images = [String]()
//    var labels = ["photo-1","photo-2","photo-3","photo-4","photo-5","photo-1","photo-2","photo-3","photo-4","photo-5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self

//        galleryLabel.text = name
        galleryLabel.text = "\(name)'s Gallery"
        //

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CustomCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Collection_View_Cell", for: indexPath) as! CustomCollectionViewCell
//        cell.image.image = UIImage(named: images[indexPath.row])
        cell.image.image = UIImage(named: images[indexPath.row])
        cell.label.text = labels[indexPath.row]
        
        return cell
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
