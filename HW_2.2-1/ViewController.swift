//
//  ViewController.swift
//  HW_2.2-1
//
//  Created by Сергей on 23.10.2021.
//

import UIKit


class ViewController: UIViewController {
    //Labels

   
    @IBOutlet var greenLabel: UILabel!
    
    @IBOutlet var redLabel: UILabel!
    
    @IBOutlet var blueLabel: UILabel!
    
    //Sliders
    
    @IBOutlet var colorCheckView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueSlider: UISlider!
    
    
    
    //_______________viewDidLoad___________________________
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = UIColor.red
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = UIColor.green
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = UIColor.blue
        
        redLabel.text = "0"
        greenLabel.text = "0"
        blueLabel.text = "0"
        
    }
    //_____________________________________________________
    
    
    

    
       
    
    
    
    @IBAction func colorChangingAction() {
        let nowR = CGFloat (redSlider.value)
        let nowG = CGFloat (greenSlider.value)
        let nowB = CGFloat (blueSlider.value)
        print ("\(nowR), \(nowG), \(nowB)")
        
        colorCheckView.backgroundColor = UIColor (red: nowR, green: nowG, blue: nowB, alpha: 1.0)
       
        let convertingRedToP3 = nowR * 255
        let convertingGreenToP3 = nowG * 255
        let convertingBlueToP3 = nowB * 255
        
        redLabel.text = "\(Int(ceil(convertingRedToP3)))"
        greenLabel.text = "\(Int(ceil(convertingGreenToP3)))"
        blueLabel.text = "\(Int(ceil(convertingBlueToP3)))"
        
//        redLabel.text = "\(round(nowR * 1000) / 1000)"
//        greenLabel.text = "\(round(nowG * 1000) / 1000)"
//        blueLabel.text = "\(round(nowB * 1000) / 1000)"
        
        
        
    }
    
        
        

    
    
    
    
    
    
  
    
}


