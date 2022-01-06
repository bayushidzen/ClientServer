//
//  LastViewController.swift
//  ClientServer
//
//  Created by Dzen on 26.12.2021.
//

import UIKit

class LastViewController: UIViewController {

    @IBOutlet weak var nameView: UILabel!
    
    @IBOutlet weak var moneyView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameView.text = Session.instance.fio
        moneyView.text = String(describing: Session.instance.money)
        // Do any additional setup after loading the view.
    }
    

    

}
