//
//  MainVC.swift
//  Whatever
//
//  Created by Mayank Mehta on 05/04/17.
//  Copyright © 2017 Mayank Mehta. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var items = [cellModel]()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ViewCell
        {
            let item = items[indexPath.row]
            cell.updateUI(_cellModel: item)
            return cell
        }
        else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: item)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let singleItem = sender as? cellModel {
                destination.item = singleItem
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let p1 = cellModel(imageURL: "https://i.ytimg.com/vi/U7elNhHwgBU/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=67&sigh=F-3y7WsMgP_ctKLZLOUoWtzmC1s", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/U7elNhHwgBU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Narcos | Official Trailer")
        
        let p2 = cellModel(imageURL: "https://i.ytimg.com/vi/RKsP4fi3jL0/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=5NmWSIGwwxhD5-FOAkZU5M-WFwA", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iGp_N3Ir7Do\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "The Game Of Thrones")
        
        let p3 = cellModel(imageURL: "https://i.ytimg.com/vi/ceqOTZnhgY8/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=l8l7tOrCAkhyQoUkWiQBbvaUibU", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ceqOTZnhgY8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Breaking Bad | Trailer")
        
         let p4 = cellModel(imageURL: "https://i.ytimg.com/vi/XWxyRG_tckY/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=67&sigh=eOMeK3LqHJiz1qvvzU0bOgMGGwY", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XWxyRG_tckY\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Stranger Things | Trailer")
        
        let p5 = cellModel(imageURL: "https://i.ytimg.com/vi/xcUHB9n8Kws/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=67&sigh=WxWyJ6A4zNBmeaRzOexmteTxe4I", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xcUHB9n8Kws\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "TVF Pitchers | Trailer")
        
        let p6 = cellModel(imageURL: "https://i.ytimg.com/vi/Xs-HbHCcK58/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=E4OefI65nJ4l9_JgT6vNq6I_x-g", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K2fZb9tDXKE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "F.R.I.E.N.D.S")
        
        let p7 = cellModel(imageURL: "https://i.ytimg.com/vi/PgNMM_dpZRE/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=67&sigh=I8MSK0A_1eO3Q8v4zGPga1yU36c", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PgNMM_dpZRE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Gotham | Trailer")
        
        items.append(p1)
        items.append(p2)
        items.append(p3)
        items.append(p4)
        items.append(p5)
        items.append(p6)
        items.append(p7)
    
        
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
