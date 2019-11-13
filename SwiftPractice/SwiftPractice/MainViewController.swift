//
//  MainViewController.swift
//  SwiftPractice
//
//  Created by 草帽~小子 on 2019/8/25.
//  Copyright © 2019 OnePiece. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource, MainTableViewCellDelegate {
    @objc func saveNmae(_ nameString: String) {
        print("协议")
    }
    let tableViewArr:[String] = ["詹姆斯", "科比", "奥尼尔"]
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        
        // Do any additional setup after loading the view.
    }
    
    func setUpUI() -> Void {
        self.tableView = UITableView.init(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), style: UITableView.Style.grouped)
        self.tableView.backgroundColor = UIColor.orange
        self.tableView.delegate = self as UITableViewDelegate
        self.tableView.dataSource = self as UITableViewDataSource
        //self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        self.view.addSubview(self.tableView)
        self.tableView.register(MainTableViewCell.classForCoder(), forCellReuseIdentifier: "MainTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MainTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
        cell.titleLab?.text = self.tableViewArr[indexPath.row]
        cell.selectionStyle = UITableViewCell.SelectionStyle.none;
        cell.delegage = self
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath)
//
//    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
