//
//  cellModel.swift
//  Whatever
//
//  Created by Mayank Mehta on 05/04/17.
//  Copyright © 2017 Mayank Mehta. All rights reserved.
//

import Foundation

class cellModel {
    private var _imageURL : String
    private var _videoTitle : String
    private var _videoURL : String
    
    var imageURL : String {
        return _imageURL
    }
    
    var videoURL : String{
        return _videoURL
    }
    
    var videoTitle : String{
        return _videoTitle 
    }
    
    init(imageURL : String, videoURL : String, videoTitle : String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
