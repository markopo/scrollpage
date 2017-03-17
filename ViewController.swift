//
//  ViewController.swift
//  ScrollPage
//
//  Created by Marko Poikkimäki on 2017-03-17.
//  Copyright © 2017 Marko Poikkimäki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var images = [UIImageView]()
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX:CGFloat = 0.0
            newX = scrollWidth / 2  + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX-75, y: scrollView.frame.size.height/2-75, width:150, height: 150)
            
        }
        
      //  scrollView.backgroundColor = UIColor.yellow
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

