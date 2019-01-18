//
//  FirstViewController.swift
//  TestViewController
//
//  Created by EquipeSuporteAplicacao on 4/28/18.
//  Copyright © 2018 EquipeSuporteAplicacao. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var lblTeste: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.lblTeste.text = NSLocalizedString("welcome", comment: "")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
