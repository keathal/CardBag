//
//  FrontCardViewController.swift
//  CardBag
//
//  Created by Admin on 25.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class FrontCardViewController: UIViewController {

    @IBOutlet weak var b_add: UIButton!
    @IBOutlet weak var lb_clothes: UILabel!
    @IBOutlet weak var lb_percent: UILabel!
    @IBAction func b_add_Action(_ sender: Any) {
        let controller = BackCardViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        b_add.layer.cornerRadius=20
        lb_clothes.layer.cornerRadius=12
        lb_percent.layer.cornerRadius=12
        lb_percent.layer.masksToBounds = true
        lb_clothes.layer.masksToBounds = true
        // Do any additional setup after loading the view.
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
