//
//  LoadingViewController.swift
//  toy-loading-child-controller
//
//  Created by Faiz Mokhtar on 06/05/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import UIKit
import Lottie

class LoadingViewController: UIViewController {

    private lazy var loadingAnimationView = LOTAnimationView(name: "loader")

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
            self?.loadingAnimationView.play()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        loadingAnimationView.translatesAutoresizingMaskIntoConstraints = false
        loadingAnimationView.loopAnimation = true
        loadingAnimationView.backgroundColor = UIColor.white
        view.addSubview(loadingAnimationView)

        NSLayoutConstraint.activate([
            loadingAnimationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadingAnimationView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        loadingAnimationView.stop()
    }
}
