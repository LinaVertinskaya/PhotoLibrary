//
//  MainTabBarController.swift
//  PhotoLibrary
//
//  Created by Лина Вертинская on 31.07.22.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())

        let likesVC = LikesCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())

        viewControllers = [
            generateNavigationController(rootViewController: photosVC, title: "Photos", image: #imageLiteral(resourceName: "icons")),
            generateNavigationController(rootViewController: likesVC, title: "Favourites", image: #imageLiteral(resourceName: "hearts"))
        ]
    }

    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
