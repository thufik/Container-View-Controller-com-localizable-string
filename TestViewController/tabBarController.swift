//
//  tabBarController.swift
//  TestViewController
//
//  Created by EquipeSuporteAplicacao on 4/29/18.
//  Copyright © 2018 EquipeSuporteAplicacao. All rights reserved.
//

import UIKit

class tabBarController: UITabBarController {
    
    
    var tabBarItem1 : UITabBarItem{
        
        let image = UIImage(named: "icon_1")!
        let imageClicked = UIImage(named: "icon_1_clicked")!
        
        let tabBarItem = UITabBarItem(title: "Icone 1", image: image, selectedImage: imageClicked)
        
        return tabBarItem
    }
    
    lazy var viewControls : [UIViewController] = { () -> [UIViewController] in
        let firstVc = FirstViewController()

        let image = UIImage(named: "icon_1_clicked")!
        let imageClicked = UIImage(named: "icon_1_clicked")!

        let tabBarItem = UITabBarItem(title: "icon", image: image, tag: 0)

        firstVc.tabBarItem = self.tabBarItem1

        let anotherVc = AnotherViewController()

        return [firstVc,anotherVc]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.setViewControllers(self.viewControls, animated: true)
        print("carregou")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(item)
    }
}

extension tabBarController : UITabBarControllerDelegate{
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print(viewController)
    }
}
