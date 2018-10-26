//
//  NoCardViewController.swift
//  CardBag
//
//  Created by Admin on 18.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class NoCardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title="CARDbag"
        
        //navigationItem.rightBarButtonItem=UIBarButtonItem(image: UIImage(named: "Image-1"), style: .plain, target:self, action: #selector(showAccount))
        //navigationItem.rightBarButtonItem=UIBarButtonItem(image: UIImage(named: "Plus"), style: .plain, target: self, action: #selector(addCard))
        navigationItem.rightBarButtonItems=[UIBarButtonItem(image: UIImage(named: "Plus"), style: .plain, target: self, action: #selector(addCard)), UIBarButtonItem(image: UIImage(named: "Image-1"), style: .plain, target:self, action: #selector(showAccount))]
        // Do any additional setup after loading the view.
    }
    @objc private func showAccount() {
        
    }
    @objc private func addCard() {
        //let controller = FrontCardViewController()
        //navigationController?.pushViewController(controller, animated: true)
        
        
        let controller = formViewController()
        
        let navigation = UINavigationController(rootViewController: controller)
        controller.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "Close"), style: .plain, target: self, action: #selector(closeView))
        
        navigationController?.present(navigation, animated: true, completion: nil)
    }
    
    @objc private func closeView() {
        dismiss(animated: true, completion: nil)
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
