//
//  MainViewController.swift
//  SurfSummerSchoolProject
//
//  Created by Sergei Voishchev on 03.08.2022.
//

import UIKit

class MainViewController: UIViewController {

    lazy var navigator = UINavigationController(rootViewController: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Главная"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        let barButtonItem = UIBarButtonItem(image: UIImage(named: "searchIcon"), style: .done, target: nil, action: nil)
        barButtonItem.tintColor = .black
        self.navigationItem.rightBarButtonItem = barButtonItem
    }

}
