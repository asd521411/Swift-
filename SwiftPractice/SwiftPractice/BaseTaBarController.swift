//
//  BaseTaBarController.swift
//  SwiftPractice
//
//  Created by 草帽~小子 on 2019/8/25.
//  Copyright © 2019 OnePiece. All rights reserved.
//

import UIKit

class BaseTaBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let dic:Dictionary = [NSAttributedString.Key.foregroundColor:UIColor.red, NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 12)]
        self.navigationController?.navigationBar.titleTextAttributes = dic
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
