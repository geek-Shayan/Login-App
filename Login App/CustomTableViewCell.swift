//
//  CustomTableViewCell.swift
//  Login App
//
//  Created by MD. SHAYANUL HAQ SADI on 14/2/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var viewProfileButton: UIButton!
    
    var tapBlock: (() -> Void)? = nil

    @IBAction func ViewProfileButtonPressed(_ sender: UIButton) {
        
        tapBlock?()
    }
    

}
