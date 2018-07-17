//
//  Theme.swift
//  FollowAlongShotTracker
//
//  Created by David Sadler on 7/17/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import UIKit

enum Theme {
    
    static func blueTheme() {
        
        //This changes the color for the top bar (IE UINavigationBar)
        UINavigationBar.appearance().barTintColor = UIColor.newColor
        
        //This changes the color and font of the title on the top bar
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.italicSystemFont(ofSize: 30)]
        
        //This changes the appearance of the system info (time, battery icons, service)
        UINavigationBar.appearance().barStyle = .blackOpaque  //Note: blackOpaque is white
        
        //This changes the color for the bottom bar (IE UITabBar)
        UITabBar.appearance().barTintColor = UIColor.newColor
        
        //This changes the color for the icons on the bottom bar when they are not selected
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: .normal)
        
        UITabBar.appearance().tintColor = UIColor.red
    
        
        //This changes the color for the icons on the bottom bar when they are selected
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.red], for: .normal)
        
    }
    
    static func newTheme() {
        
    }
}
