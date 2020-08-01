//
//  ViewController.swift
//  toy-loading-child-controller
//
//  Created by Faiz Mokhtar on 06/05/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadSomething()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Main"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadSomething() {
        let loadingViewController = LoadingViewController()
        add(loadingViewController)

        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            loadingViewController.remove()
        }
    }
}

