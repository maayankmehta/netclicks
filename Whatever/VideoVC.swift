//
//  VideoVC.swift
//  Whatever
//
//  Created by Mayank Mehta on 05/04/17.
//  Copyright © 2017 Mayank Mehta. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    private var _item : cellModel!
    
    var item :cellModel{
        get{
            return _item
        }set{
            _item = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.loadHTMLString(item.videoURL, baseURL: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
