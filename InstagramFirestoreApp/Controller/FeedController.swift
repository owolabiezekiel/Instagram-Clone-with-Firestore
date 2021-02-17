//
//  FeedController.swift
//  InstagramFirestoreApp
//
//  Created by Tobiloba Owolabi on 16/02/2021.
//

import UIKit

private let reuseIdentifier = "Cell"

class FeedController: UICollectionViewController{
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    configureUI()
  }
  
  // MARK: - Helpers
  func configureUI(){
    collectionView.backgroundColor = .white
    collectionView.register(FeedCell.self, forCellWithReuseIdentifier: reuseIdentifier)
  }
}

// MARK: - UICollectionViewDatasource
extension FeedController{
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FeedCell
  
    return cell
  }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension FeedController: UICollectionViewDelegateFlowLayout{
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: view.frame.width, height: 200)
  }
}

