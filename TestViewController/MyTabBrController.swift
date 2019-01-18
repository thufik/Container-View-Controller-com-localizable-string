//
//  MyTabBrController.swift
//  TestViewController
//
//  Created by EquipeSuporteAplicacao on 4/29/18.
//  Copyright © 2018 EquipeSuporteAplicacao. All rights reserved.
//

import UIKit

class MyTabBrController: UIViewController {
    
    @IBOutlet weak var myTabBar: UITabBar!
    
    @IBOutlet weak var containerView: UIView!
    
    
    lazy var tabBarItems : [UITabBarItem] = { () -> [UITabBarItem] in
       
        let item1 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
       
        let image = UIImage(named: "icon_1")!
        let imageClicked = UIImage(named: "icon_1_clicked")!
        
        let item2 = UITabBarItem(title: "Icone 1", image: image, selectedImage: imageClicked)
        let item3 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
        let item4 = UITabBarItem(tabBarSystemItem: .downloads, tag: 3)
        
        return [item1,item2, item3,item4]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.myTabBar.barStyle = .black
        self.myTabBar.setItems(self.tabBarItems, animated: true)
        self.myTabBar.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MyTabBrController : UITabBarDelegate{
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        if item.tag == 1 || item.title == "Icone 1"{
            
            let v = AnotherViewController()
            
            //self.addChildViewController(v)
            
            for view in self.containerView.subviews{
                view.removeFromSuperview()
            }
            
            self.containerView.addSubview(v.view)
            
            //v.didMove(toParentViewController: self)
        }else if item.tag == 2{
            let firstView = FirstViewController()
            
            //self.addChildViewController(firstView)
            
            self.containerView.removeAllSubViews()

            self.containerView.addSubview(firstView.view)
            
            //firstView.didMove(toParentViewController: self)
        }
    }
}

extension UIView{
    func removeAllSubViews(){
        for subview in subviews{
            subview.removeFromSuperview()
        }
    }
}
