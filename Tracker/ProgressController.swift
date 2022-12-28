//
//  ProgressController.swift
//  Tracker
//
//  Created by Андрей Кодочигов on 28.12.2022.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Workout Progress"
        navigationController?.tabBarItem.title = Resources.String.TabBar.progress
        
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Detalies")
    }


}
