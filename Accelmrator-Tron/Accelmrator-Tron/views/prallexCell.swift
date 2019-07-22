//
//  prallexCell.swift
//  Accelmrator-Tron
//
//  Created by Islam Swira on 7/22/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import UIKit

class prallexCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupParallax()
        
    }
    
    func initCell(withImage image:UIImage, andDescription desc:String){
        img.image = image
        descriptionLabel.text = desc
    }
    
    
    func setupParallax(){
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xmotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xmotion.minimumRelativeValue = min
        xmotion.maximumRelativeValue = max
        
        let ymotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        ymotion.minimumRelativeValue = min
        ymotion.maximumRelativeValue = max
        
        let motionEffectGroub = UIMotionEffectGroup()
        motionEffectGroub.motionEffects = [xmotion , ymotion]
        
        
        img.addMotionEffect(motionEffectGroub)
    }

   

}
