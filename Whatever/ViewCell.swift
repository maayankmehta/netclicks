//
//  ViewCell.swift
//  Whatever
//
//  Created by Mayank Mehta on 05/04/17.
//  Copyright © 2017 Mayank Mehta. All rights reserved.
//

import UIKit

class ViewCell: UITableViewCell {

    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI( _cellModel : cellModel){
        videoTitle.text = _cellModel.videoTitle
        
        let url = URL(string: _cellModel.imageURL)
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url!)
                DispatchQueue.global().sync {
                    self.videoImage.image = UIImage(data: data)
                }
            }catch{
                print("Error aya!!")
            }
            
        }
    }

}
