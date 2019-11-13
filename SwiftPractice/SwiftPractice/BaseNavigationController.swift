//
//  BaseNavigationController.swift
//  SwiftPractice
//
//  Created by 草帽~小子 on 2019/8/25.
//  Copyright © 2019 OnePiece. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(red: 0.4, green: 0.6, blue: 0.8, alpha: 1)
        self.view.backgroundColor = UIColor.white
        
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
