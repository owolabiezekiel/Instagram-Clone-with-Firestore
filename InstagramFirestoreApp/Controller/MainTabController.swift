//
//  MainTabController.swift
//  InstagramFirestoreApp
//
//  Created by Tobiloba Owolabi on 14/02/2021.
//

import UIKit

class MainTabController: UITabBarController{
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    configureViewControllers()
  }
  
  // MARK: - Helpers
  func configureViewControllers(){
    view.backgroundColor = .white
    let feed = templateNavigationCOntroller(unselectedImage: #imageLiteral(resourceName: "home_unselected"), selectedImage: #imageLiteral(resourceName: "home_selected"), rootViewController: FeedController())
    let search = templateNavigationCOntroller(unselectedImage: #imageLiteral(resourceName: "search_unselected"), selectedImage: #imageLiteral(resourceName: "search_selected"), rootViewController: SearchController())
    let imageUploader = templateNavigationCOntroller(unselectedImage: #imageLiteral(resourceName: "plus_unselected"), selectedImage: #imageLiteral(resourceName: "plus_unselected"), rootViewController: ImageUploadController())
    let notification = templateNavigationCOntroller(unselectedImage: #imageLiteral(resourceName: "like_unselected"), selectedImage: #imageLiteral(resourceName: "like_selected"), rootViewController: NotificationController())
    let profile = templateNavigationCOntroller(unselectedImage: #imageLiteral(resourceName: "profile_unselected"), selectedImage: #imageLiteral(resourceName: "profile_selected"), rootViewController: ProfileController())
                                               
    viewControllers = [feed, search, imageUploader, notification, profile]
    tabBar.tintColor = .black
  }
  
  func templateNavigationCOntroller(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
    let nav = UINavigationController(rootViewController: rootViewController)
    nav.tabBarItem.image = unselectedImage
    nav.tabBarItem.selectedImage = selectedImage
    nav.navigationBar.tintColor = .black
    return nav
  }
}
