//
//  CardsListViewController.swift
//  CardBag
//
//  Created by Admin on 18.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CardsListViewController: UIViewController {
    private var updateLabelCount : Int = 0
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var changeTextButton: UIButton!
    @IBOutlet weak var testLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        changeTextButton.setTitle("Update text", for: .normal)
        navigationItem.title="Changed title"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(showLogoView))
      
        navigationItem.rightBarButtonItem=UIBarButtonItem(image: UIImage(named: "Image-1"), style: .plain, target:self, action: #selector(showNoCardView))
    }

    @objc private func updateTextLabel() {
        updateLabelCount+=1
        textLabel.text = "Updated \(updateLabelCount) times"
        }
    
    @objc private func showNoCardView() {
        let controller = NoCardViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc private func showLogoView() {
        let controller = logoViewController()
        
        let navigation = UINavigationController(rootViewController: controller)
        controller.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(closeLogoView))
        
        navigationController?.present(navigation, animated: true, completion: nil)
    }
    
    @objc private func closeLogoView() {
        dismiss(animated: true, completion: nil)
    }
    override func viewWillAppear(_ animated: Bool) {
        testLabel.text = "Changed text"
    }
    //MARK: ations methods
    @IBAction func onChangeTextButton(_ sender: Any) {
        updateTextLabel()
    }
    

}
