//
//  Resouces.swift
//  Tracker
//
//  Created by Андрей Кодочигов on 28.12.2022.
//

import UIKit

enum R {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        
        static var separator = UIColor(hexString: "#E8ECEF")
        static var secondaruy = UIColor(hexString: "#F0F3FF")
        static var background = UIColor(hexString: "#F8F9F9")
        
        static var titleGray = UIColor(hexString: "#545c77")
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
            switch tab {
            case .overview: return "Overview"
            case .session: return "Session"
            case .progress: return "Progress"
            case .settings: return "Settings"
            }
        }
    }
        
        enum NavBar {
            static var overview = "Today"
            static var session = "High Intensity Cardio"
            static var progress = "Worcout Progress"
            static var settings = "Settings"
        }
        
        enum Overview {
            static var allWorcoutsButton = "All Workouts"
        }
        
        enum Session {
            static var navBarLeft = "Pause"
            static var navBarRight = "Finish"
        }
        
        enum Progress {
            static var navBarLeft = "Export"
            static var navBarRight = "Details"
        }
        
        enum Setting {}
    }
    
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "overview_tab")
                case .session: return  UIImage(named: "session_tab")
                case .progress: return  UIImage(named: "progress_tab")
                case .settings: return  UIImage(named: "settings_tab")
                }
            }
        }
        
        enum Common {
            static var allWorcoutsButton = UIImage(named: "down_arrow")
            static var add = UIImage(named: "add_button")
        }
    }
    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
