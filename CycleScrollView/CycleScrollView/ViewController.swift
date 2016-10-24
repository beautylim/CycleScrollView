//
//  ViewController.swift
//  CycleScrollView
//
//  Created by li.min on 2016/10/24.
//  Copyright © 2016年 li.min. All rights reserved.
//

import UIKit

let screenSize = UIScreen.main.bounds.size
class ViewController: UIViewController,UIScrollViewDelegate {
    var pageControll:UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightText
    
        //scrollView
        let cycleScrollView = CycleScrollView.init(frame: CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: screenSize))
        cycleScrollView.delegate = self
        view.addSubview(cycleScrollView)
        
        //pageControll
        pageControll = UIPageControl.init(frame: CGRect.init(origin: CGPoint.init(x: (screenSize.width-100)/2, y: (screenSize.height - 35)), size: CGSize.init(width: 100, height: 15)))
        pageControll.currentPage = 0
        pageControll.numberOfPages = 4
        pageControll.pageIndicatorTintColor = UIColor.white
        pageControll.currentPageIndicatorTintColor = UIColor.red
        view.addSubview(pageControll)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let offSet = scrollView.contentOffset
        let i = offSet.x / screenSize.width
        if i == 4 {
            scrollView.contentOffset = CGPoint.init(x: 0, y: 0)
            pageControll.currentPage = 0
        }else{
            pageControll.currentPage = Int(i)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

