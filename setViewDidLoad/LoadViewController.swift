//
//  LoadViewController.swift
//  setViewDidLoad
//
//  Created by 林祔利 on 2023/3/26.
//

import UIKit
import SpriteKit

class LoadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let image = UIImage(named: "銀河")
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: 0, y: 0, width: 393, height: 852)
        imageView.contentMode = .scaleAspectFill
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.black.cgColor,
            UIColor.blue.cgColor,
            UIColor.white.cgColor
        ]
        
        let skView = SKView(frame: view.frame)
                view.insertSubview(skView, at: 0)
                let scene = SKScene(size:skView.frame.size)
                skView.allowsTransparency = true
                scene.anchorPoint = CGPoint(x: 0.5, y: 0.1)
                scene.backgroundColor = UIColor.clear
                let emitterNode = SKEmitterNode(fileNamed: "MyParticle")
                scene.addChild(emitterNode!)
                skView.presentScene(scene)
        
        let label = UILabel()
        label.text = "拜託點我"
        label.frame = CGRect(x: 267, y: 147, width: 80, height: 40)
        label.textColor = UIColor.white
        view.layer.addSublayer(gradientLayer)
        imageView.addSubview(skView)
        imageView.addSubview(label)
        view.addSubview(imageView)
        
        
        let gifView = UIImageView(frame: CGRect(x: 0, y: 0, width: 393, height: 300))
        gifView.image = UIImage.animatedImageNamed("star-", duration: 1)
        
        gifView.backgroundColor = UIColor.clear
        view.addSubview(gifView)
        
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
