//
//  formViewController.swift
//  CardBag
//
//  Created by Admin on 19.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit
import Alamofire
class formViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var b_photo: UIButton!
   
    //@IBOutlet weak var mainTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //mainTable.dataSource = self
        b_photo.layer.cornerRadius=20
        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!
        
        Alamofire.request(url).responseJSON { (response) in
            
            
            if let d = response.result.value as? [String : AnyObject] {
                print(response.result.value!)
                print(d["userId"] as! Int)
            }
            else {
                print("empty xt")
            }
        }
        
    }
    
    @IBAction func b_photo_Action(_ sender: Any) {
        let controller = FrontCardViewController()
        navigationController?.pushViewController(controller, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text="label"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }
    
}
extension formViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
