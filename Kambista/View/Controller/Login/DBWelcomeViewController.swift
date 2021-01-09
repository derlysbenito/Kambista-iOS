//
//  DBWelcomeViewController.swift
//  Kambista
//
//  Created by Derlys H. on 1/8/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit

class DBWelcomeViewController: UIViewController {
    
    var userViewModelController : DBUserViewModelController!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.emailLabel.text = self.userViewModelController.userViewModel.email
    }
    
}
