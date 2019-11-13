//
//  MainTableViewCell.swift
//  SwiftPractice
//
//  Created by 草帽~小子 on 2019/8/25.
//  Copyright © 2019 OnePiece. All rights reserved.
//

import UIKit

typealias MainTableViewCellBkock = (_ para:String) -> Void
typealias blockFunctionA = () -> ()//无参无返回
typealias blockFunctiona = () -> Void
typealias blockFunctionB = (Int, Int) -> ()//有参无返回
typealias blockFunctionC = () -> (String)
typealias blockFuntionD = (Int, Int) -> (String)//有参有返回


class MainTableViewCell: UITableViewCell {

    weak var delegage : MainTableViewCellDelegate?
    var callBack = MainTableViewCellBkock.self
    
    var blockPropertyA = blockFunctionA.self
    var blocKPropertya : blockFunctionA?
    
    var blockPropertyB = blockFunctionB.self
    //var blockPropertyb :(Int, Int) -> ()
    //var blockPropertyD : (Int, Int) -> String = {a, b in return ""}
    
    
    var titleLab: UILabel?
    var imageV: UIImageView?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpSubViews()
    }
    
    func setUpSubViews(){
        self.titleLab = UILabel()
        self.titleLab?.backgroundColor = UIColor.cyan
        self.contentView.addSubview(self.titleLab!)
        self.imageV = UIImageView()
        self.imageV?.backgroundColor = UIColor.purple
        self.contentView.addSubview(self.imageV!)
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(tapMethod))
        self.imageV?.addGestureRecognizer(tap)
    }
    
    override func layoutSubviews() {
        self.titleLab?.frame = CGRect(x: 0, y: 0, width: self.contentView.frame.size.width, height: self.contentView.frame.size.height / 3)
        self.imageV?.isUserInteractionEnabled = true
        self.imageV?.frame = CGRect(x: 0, y: self.contentView.frame.size.height / 3, width: self.contentView.frame.size.width, height: self.contentView.frame.size.height * 2 / 3)
    }
    
    @objc func tapMethod() -> Void {
        print("tap")
        if self.delegage != nil && (self.delegage?.responds(to: Selector.init(("saveNmae:"))))! {
            self.delegage?.saveNmae("zhao")
        }
        
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}

protocol MainTableViewCellDelegate: NSObjectProtocol {
    func saveNmae(_ nameString: String)
}




