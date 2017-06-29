//
//  ViewController.swift
//  GIFInImageViewDemo
//
//  Created by bansi bhatt on 29/06/17.
//
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var imgView : UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView?.isHidden = true
        let gifURL : String = "http://www.gifbin.com/bin/4802swswsw04.gif"
        let imageURL = UIImage.gifImageWithURL(gifURL)
        let imageView3 = UIImageView(image: imageURL)
        imgView = UIImageView(image: imageURL)
       imageView3.frame = CGRect(x: 20.0, y: 390.0, width: self.view.frame.size.width - 40, height: 150.0)
       // view.addSubview(imageView3)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

