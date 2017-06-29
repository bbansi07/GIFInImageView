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
        loadImageURL()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loadImageURL(){
        let gifURL : String = "http://www.gifbin.com/bin/4802swswsw04.gif"
        let imageURL = UIImage.gifImageWithURL(gifURL)
        
        imgView?.image = imageURL
    }
    
    func loadImageData(){
        let imageData = try? Data(contentsOf: Bundle.main.url(forResource: "funny", withExtension: "gif")!)
        let advTimeGif = UIImage.gifImageWithData(imageData!)
        let imageView = UIImageView(image: advTimeGif)
        imageView.frame = CGRect(x: 20.0, y: 220.0, width: self.view.frame.size.width - 40, height: 150.0)
        view.addSubview(imageView)
        
    }
    
    func loadImageUsingName(){
        
        let jeremyGif = UIImage.gifImageWithName("funny")
        let imageView = UIImageView(image: jeremyGif)
        imageView.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 150.0)
        view.addSubview(imageView)
        
        
    }
    
    
    
}

