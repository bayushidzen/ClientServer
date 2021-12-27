//
//  LastViewController.swift
//  ClientServer
//
//  Created by Dzen on 26.12.2021.
//

import UIKit


class Session {
    static let instance = Session()
    
    private init (){}
    
    var fio = "1112"
    var id = UUID.self
    var money = 0
}

class LastViewController: UIViewController {

    @IBOutlet weak var nameView: UILabel!
    
    @IBOutlet weak var moneyView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let session = Session.instance
        nameView.text = session.fio
        nameView.textColor = UIColor.orange
        moneyView.text = String(describing: session.money)
        // Do any additional setup after loading the view.
    }
    

    

}
