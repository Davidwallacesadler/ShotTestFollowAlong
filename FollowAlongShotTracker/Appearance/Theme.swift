//
//  Theme.swift
//  FollowAlongShotTracker
//
//  Created by David Sadler on 7/17/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import UIKit

enum Theme {
    
    static func oceanTheme() {
        
        //This controls the color for the top bar (IE the UINavigationBar).
        UINavigationBar.appearance().barTintColor = UIColor.oceanBlue
        
        //This controls the color and font of the title on the navigation bar.
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.italicSystemFont(ofSize: 30)]
        
        //This controls the appearance of the system info (time/date, battery icon, service).
        UINavigationBar.appearance().barStyle = .blackOpaque  //Note: blackOpaque is white
        
        //This changes the color for the bottom bar (IE UITabBar).
        UITabBar.appearance().barTintColor = UIColor.oceanBlue
        
        //This changes the color for the icons on the tab bar when they are not selected.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: .normal)
        
        //This changes the color for the icons on the tab bar when they are selected.
        UITabBar.appearance().tintColor = UIColor.lightNeutralGreen
    
        //This changes the text color belonging to an icon on the tab bar.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.offWhite], for: .normal)
    }
    
    static func lavenderTheme() {
        
        //This controls the color for the top bar (IE the UINavigationBar).
        UINavigationBar.appearance().barTintColor = UIColor.lilacPurple
        
        //This controls the color and font of the title on the navigation bar.
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.maroonViolet, NSAttributedStringKey.font: UIFont.italicSystemFont(ofSize: 30)]
        
        //This controls the appearance of the system info (time/date, battery icon, service).
        UINavigationBar.appearance().barStyle = .blackTranslucent  //WANT THIS TO BE BLACK
        
        //This changes the color for the bottom bar (IE UITabBar).
        UITabBar.appearance().barTintColor = UIColor.lilacPurple
        
        //This changes the color for the icons on the tab bar when they are not selected.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.maroonViolet], for: .normal) //???DONT KNOW WHAT THIS IS DOING??? ICONS STAY GRAY
        
        //This changes the color for the icons on the tab bar when they are selected.
        UITabBar.appearance().tintColor = UIColor.offBlack
        
        //This changes the text color belonging to an icon on the tab bar.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.maroonViolet], for: .normal)
        
    }
    static func forestTheme() {
        
        //This controls the color for the top bar (IE the UINavigationBar).
        UINavigationBar.appearance().barTintColor = UIColor.forestGreen
        
        //This controls the color and font of the title on the navigation bar.
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.keyLimeGreen, NSAttributedStringKey.font: UIFont.italicSystemFont(ofSize: 30)]
        
        //This controls the appearance of the system info (time/date, battery icon, service).
        UINavigationBar.appearance().barStyle = .blackOpaque  //Note: blackOpaque is white
        
        //This changes the color for the bottom bar (IE UITabBar).
        UITabBar.appearance().barTintColor = UIColor.forestGreen
        
        //This changes the color for the icons on the tab bar when they are not selected.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: .normal)
        
        //This changes the color for the icons on the tab bar when they are selected.
        UITabBar.appearance().tintColor = UIColor.keyLimeGreen
        
        //This changes the text color belonging to an icon on the tab bar.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.lightNeutralGreen], for: .normal)
    }
    static func darkPlumTheme() {
        
        //This controls the color for the top bar (IE the UINavigationBar).
        UINavigationBar.appearance().barTintColor = UIColor.maroonViolet
        
        //This controls the color and font of the title on the navigation bar.
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.offWhite, NSAttributedStringKey.font: UIFont.italicSystemFont(ofSize: 30)]
        
        //This controls the appearance of the system info (time/date, battery icon, service).
        UINavigationBar.appearance().barStyle = .blackOpaque  //Note: blackOpaque is white
        
        //This changes the color for the bottom bar (IE UITabBar).
        UITabBar.appearance().barTintColor = UIColor.maroonViolet
        
        //This changes the color for the icons on the tab bar when they are not selected.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: .normal)
        
        //This changes the color for the icons on the tab bar when they are selected.
        UITabBar.appearance().tintColor = UIColor.lilacPurple
        
        //This changes the text color belonging to an icon on the tab bar.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.offWhite], for: .normal)
    }
    static func blueAndOrangeTheme() {
        
        //This controls the color for the top bar (IE the UINavigationBar).
        UINavigationBar.appearance().barTintColor = UIColor.navyBlue
        
        //This controls the color and font of the title on the navigation bar.
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.offWhite, NSAttributedStringKey.font: UIFont.italicSystemFont(ofSize: 30)]
        
        //This controls the appearance of the system info (time/date, battery icon, service).
        UINavigationBar.appearance().barStyle = .blackOpaque  //Note: blackOpaque is white
        
        //This changes the color for the bottom bar (IE UITabBar).
        UITabBar.appearance().barTintColor = UIColor.navyBlue
        
        //This changes the color for the icons on the tab bar when they are not selected.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.offWhite], for: .normal)
        
        //This changes the color for the icons on the tab bar when they are selected.
        UITabBar.appearance().tintColor = UIColor.pumpkinOrange
        
        //This changes the text color belonging to an icon on the tab bar.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.offWhite], for: .normal)
    }
    static func strawberryTheme() {
        
        //This controls the color for the top bar (IE the UINavigationBar).
        UINavigationBar.appearance().barTintColor = UIColor.strawberryPink
        
        //This controls the color and font of the title on the navigation bar.
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.offWhite, NSAttributedStringKey.font: UIFont.italicSystemFont(ofSize: 30)]
        
        //This controls the appearance of the system info (time/date, battery icon, service).
        UINavigationBar.appearance().barStyle = .blackOpaque  //Note: blackOpaque is white
        
        //This changes the color for the bottom bar (IE UITabBar).
        UITabBar.appearance().barTintColor = UIColor.strawberryPink
        
        //This changes the color for the icons on the tab bar when they are not selected.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: .normal)
        
        //This changes the color for the icons on the tab bar when they are selected.
        UITabBar.appearance().tintColor = UIColor.daisyYellow
        
        //This changes the text color belonging to an icon on the tab bar.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.offWhite], for: .normal)
    }
    static func blueSkyTheme() {
        
        //This controls the color for the top bar (IE the UINavigationBar).
        UINavigationBar.appearance().barTintColor = UIColor.skyBlue
        
        //This controls the color and font of the title on the navigation bar.
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.offWhite, NSAttributedStringKey.font: UIFont.italicSystemFont(ofSize: 30)]
        
        //This controls the appearance of the system info (time/date, battery icon, service).
        UINavigationBar.appearance().barStyle = .blackOpaque  //Note: blackOpaque is white
        
        //This changes the color for the bottom bar (IE UITabBar).
        UITabBar.appearance().barTintColor = UIColor.skyBlue
        
        //This changes the color for the icons on the tab bar when they are not selected.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: .normal)
        
        //This changes the color for the icons on the tab bar when they are selected.
        UITabBar.appearance().tintColor = UIColor.deepBlue
        
        //This changes the text color belonging to an icon on the tab bar.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.offWhite], for: .normal)
    }
    static func sunflowerTheme() {
        
        //This controls the color for the top bar (IE the UINavigationBar).
        UINavigationBar.appearance().barTintColor = UIColor.daisyYellow
        
        //This controls the color and font of the title on the navigation bar.
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.offBlack, NSAttributedStringKey.font: UIFont.italicSystemFont(ofSize: 30)]
        
        //This controls the appearance of the system info (time/date, battery icon, service).
        UINavigationBar.appearance().barStyle = .blackOpaque  //THIS NEEDS TO BE BLACK SOMEHOW
        
        //This changes the color for the bottom bar (IE UITabBar).
        UITabBar.appearance().barTintColor = UIColor.daisyYellow
        
        //This changes the color for the icons on the tab bar when they are not selected.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: .normal)
        
        //This changes the color for the icons on the tab bar when they are selected.
        UITabBar.appearance().tintColor = UIColor.pumpkinOrange
        
        //This changes the text color belonging to an icon on the tab bar.
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.offBlack], for: .normal)
    }
}
