//
//  TabBarController.swift
//  Tracker
//
//  Created by Андрей Кодочигов on 27.12.2022.
//

import UIKit

enum Tabs: Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureAppearance() {
        tabBar.tintColor = R.Colors.active
        tabBar.barTintColor = R.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = R.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let controllers: [NavBarController] = Tabs.allCases.map {
            tab in
            let controller = NavBarController(rootViewController: getController(for: tab))
            controller.tabBarItem = UITabBarItem(title: R.Strings.TabBar.title(for: tab),
                                                 image: R.Images.TabBar.icon(for: tab),
                                                 tag: tab.rawValue)
            return controller
        }
        
        setViewControllers(controllers, animated: false)
    }
    
    private func getController(for tab: Tabs) -> BaseController {
        switch tab {
        case .overview: return OverviewController()
        case .session: return SessionController()
        case .progress: return ProgressController()
        case .settings: return SettingController()
        }
    }
}
        
//        let overvieewController = OverviewController()
//        let sessionController = SessionController()
//        let progressController = ProgressController()
//        let settingsController = SettingController()
//
//        let overviewNavigation = NavBarController(rootViewController: overvieewController)
//        let sessioNavigation = NavBarController(rootViewController: sessionController)
//        let progressNavigation = NavBarController(rootViewController: progressController)
//        let settingsNavigation = NavBarController(rootViewController: settingsController)
//
//        overviewNavigation.tabBarItem = UITabBarItem(title: R.Strings.TabBar.overview, image: R.Images.TabBar.overview, tag: Tabs.overview.rawValue)
//        sessioNavigation.tabBarItem = UITabBarItem(title: R.Strings.TabBar.session, image: R.Images.TabBar.session, tag: Tabs.session.rawValue)
//        progressNavigation.tabBarItem = UITabBarItem(title: R.Strings.TabBar.progress, image: R.Images.TabBar.progress, tag: Tabs.progress.rawValue)
//        settingsNavigation.tabBarItem = UITabBarItem(title: R.Strings.TabBar.settings, image: R.Images.TabBar.settings, tag: Tabs.settings.rawValue)
//
//        setViewControllers([
//            overviewNavigation,
//            sessioNavigation,
//            progressNavigation,
//            settingsNavigation
//        ], animated: false)
//    }
//}
