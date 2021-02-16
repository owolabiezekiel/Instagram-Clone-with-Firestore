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
    view.backgroundColor = .red
    let feed = FeedController()
    let search = SearchController()
    let imageUploader = ImageUploadController()
    let notification = NotificationController()
    let profile = ProfileController()
    
    viewControllers = [feed, search, imageUploader, notification, profile]
  }
}
