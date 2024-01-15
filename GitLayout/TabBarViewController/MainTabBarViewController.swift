//
//  MainTabBarViewController.swift
//  GitLayout
//
//  Created by DA MAC M1 157 on 2024/01/15.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabs()
    }
    
    func configureTabs() {
        
        let search = UINavigationController(rootViewController: SearchViewController())
        let fav = UINavigationController(rootViewController: FavoritesViewController())
        
        search.tabBarItem.title = "Search"
        search.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        search.tabBarItem.selectedImage = UIImage(systemName: "magnifyingglass.circle.fill")
        
        fav.tabBarItem.title = "Favorites"
        fav.tabBarItem.image = UIImage(systemName: "star")
        fav.tabBarItem.selectedImage = UIImage(systemName: "star.circle.fill")
        
        UITabBar.appearance().backgroundColor = .systemGray5
        UITabBar.appearance().tintColor = .systemBrown
        setViewControllers([search, fav], animated: true)
    }
    
    

}
