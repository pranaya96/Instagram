//
//  PostViewCell.swift
//  Instagram
//
//  Created by Pranaya Adhikari on 2/25/18.
//  Copyright © 2018 Pranaya Adhikari. All rights reserved.
//

import UIKit
import Parse
import ParseUI


class PostViewCell: UITableViewCell {

    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var captionView: UILabel!
    @IBOutlet weak var photoView: PFImageView!
    
    @IBOutlet weak var timeStampView: UILabel!
    @IBOutlet weak var profileNameLabel2: UILabel!
    var instagramPost: Post! {
        didSet {
            self.photoView.file = instagramPost.media
            self.photoView.loadInBackground()
            self.captionView.text = instagramPost.caption
            self.timeStampView.text = instagramPost.createdAt?.description
            self.profileNameLabel.text = instagramPost.author.username
            self.profileNameLabel2.text = instagramPost.author.username
            
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
