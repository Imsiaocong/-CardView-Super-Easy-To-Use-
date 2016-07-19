//
//  CardView.swift
//  仿网易云课堂CardView
//
//  Created by 王笛 on 16/7/18.
//  Copyright © 2016年 王笛iOS.Inc. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    private var imageArr: [UIImageView]!
    private var numberOfItems: Int!
    private var target: UIViewController!
    
    init(frame: CGRect, items: Int, target: UIViewController) {
        super.init(frame: frame)
        self.numberOfItems = items
        self.target = target
        
        self.createImageViews(numberOfItems)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createImageViews(count: Int) {
        imageArr = [UIImageView]()
        for index in 0..<count {
            let imageView = createOneImageView(index)
            imageView.image = UIImage(named: "\(index)")
            self.target.view.insertSubview(imageView, atIndex: 1)
            self.imageArr.append(imageView)
        }
    }
    
    func createOneImageView(index: Int) -> UIImageView {
        let imageView = UIImageView()
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.frame = CGRectInset(self.target.view.frame, 20, 100)
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        
        setUpImageView(imageView, index: index)
        
        return imageView
    }
    
    func setUpImageView(imageView: UIImageView, index: Int) {
        var transform = CATransform3DIdentity
        transform.m34 = -0.001
        imageView.layer.transform = transform
        
        imageView.layer.transform = CATransform3DTranslate(imageView.layer.transform, 0, -7.0 * CGFloat(index), 0)
        imageView.layer.transform = CATransform3DScale(imageView.layer.transform, 1 - 0.08 * CGFloat(index), 1, 1)
        imageView.layer.opacity = 1 - 0.2 * Float(index)
    }
    
}