//
//  ImageTableViewCell.swift
//  NewsDomo-Swift
//
//  Created by Dai Qinfu on 16/4/13.
//  Copyright © 2016年 Wingzki. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    lazy var bigImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.gray
        
        return imageView;
    }()
    
    lazy var titleLabel: UILabel = {
     
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(bigImageView)
        self.contentView.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { (make) in
            
            make.left.top.right.equalTo(self.contentView).inset(UIEdgeInsetsMake(10, 10, 0, 10))
            
        }
        
        bigImageView.snp.makeConstraints { (make) in
            
            make.left.right.equalTo(self.contentView).inset(UIEdgeInsetsMake(0, 10, 0, 10))
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.bottom.equalTo(self.contentView).offset(-10)
            
        }
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
