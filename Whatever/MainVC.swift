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
        let p1 = cellModel(imageURL: "https://i.ytimg.com/vi/EKWHpQiNvtk/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=QK2TWjmjZm9JApTDkalAGBX_Tlo", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EKWHpQiNvtk\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "JOKER")
        
        let p2 = cellModel(imageURL: "https://i.ytimg.com/vi/UprcpdwuwCg/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=DqXpfCHpyTJywbxx309ioIs3UJY", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UprcpdwuwCg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Heathens")
        
        let p3 = cellModel(imageURL: "https://i.ytimg.com/vi/PZwJ7SGncwk/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=67&sigh=tkCcxFbj2cS6hyMtGbk1P4Ltois", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PZwJ7SGncwk\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Surprise")
        
         let p4 = cellModel(imageURL: "https://i.ytimg.com/vi/UprcpdwuwCg/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=DqXpfCHpyTJywbxx309ioIs3UJY", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UprcpdwuwCg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Heathens1")
        
        let p5 = cellModel(imageURL: "https://i.ytimg.com/vi/EKWHpQiNvtk/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=QK2TWjmjZm9JApTDkalAGBX_Tlo", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EKWHpQiNvtk\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "JOKER1")
        
        items.append(p1)
        items.append(p2)
        items.append(p3)
        items.append(p4)
        items.append(p5)
        
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
