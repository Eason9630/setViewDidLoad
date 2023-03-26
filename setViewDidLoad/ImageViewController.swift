//
//  ImageViewController.swift
//  setViewDidLoad
//
//  Created by 林祔利 on 2023/3/26.
//

import UIKit

class ImageViewController: UIViewController {

    let picture = ["獅子","小貓"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let image = UIImage(named: picture.randomElement()!)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 50, y: 30, width: 300, height: 500)
        view.addSubview(imageView)
        
        let label = UILabel()
        label.text = "看什麼看"
        label.frame = CGRect(x: 70, y: 520, width: 110, height: 50)
        view.addSubview(label)
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
