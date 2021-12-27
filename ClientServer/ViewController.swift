//
//  ViewController.swift
//  ClientServer
//
//  Created by Dzen on 26.12.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let session = Session.instance
        session.fio = "iVan iVanbl4"
        session.money = 9999
        
        // Do any additional setup after loading the view.
    }


}

