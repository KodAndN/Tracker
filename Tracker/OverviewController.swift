//
//  ViewController.swift
//  Tracker
//
//  Created by Андрей Кодочигов on 27.12.2022.
//

import UIKit

class OverviewController: BaseController {

    private let allWorrkoutButton = SecondaryButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension OverviewController {
    override func addViews() {
        super.addViews()
        
        view.addSubview(allWorrkoutButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            allWorrkoutButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorrkoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorrkoutButton.heightAnchor.constraint(equalToConstant: 28),
            allWorrkoutButton.widthAnchor.constraint(equalToConstant: 130)
        ])
        
    }
    
    override func configure() {
        super.configure()
        
        allWorrkoutButton.translatesAutoresizingMaskIntoConstraints = false
        allWorrkoutButton.setTitle(Resources.Strings.Overview.allWorcoutsButton)
        allWorrkoutButton.addTarget(self, action: #selector(allWorcoutsButtonAction), for: .touchUpInside)
    }
}

@objc extension OverviewController {
    func allWorcoutsButtonAction() {
        print("All Workouts button tapped")
    }
}
