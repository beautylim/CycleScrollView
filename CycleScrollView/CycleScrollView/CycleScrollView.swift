//
//  CycleScrollView.swift
//  CycleScrollView
//
//  Created by li.min on 2016/10/24.
//  Copyright © 2016年 li.min. All rights reserved.
//

import UIKit
import Foundation
class CycleScrollView: UIScrollView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initComponentWithFrame(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initComponentWithFrame(frame:CGRect){
        
        self.isPagingEnabled = true
        self.contentSize = CGSize.init(width: 5 * frame.size.width, height: 0)
        self.showsHorizontalScrollIndicator = false
        for i in 0..<5 {
            let CGI = CGFloat(i)
            let imageView:UIImageView = UIImageView.init(frame: CGRect.init(origin: CGPoint.init(x: CGI * frame.size.width, y: 0), size: frame.size))
            imageView.image = UIImage.init(named: "image_0\(i%4 + 1)")
            imageView.contentMode = .scaleAspectFit
            addSubview(imageView)
        }
        
    }
}
