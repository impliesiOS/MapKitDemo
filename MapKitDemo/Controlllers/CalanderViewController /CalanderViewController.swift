//
//  CalanderViewController.swift
//  MapKitDemo
//
//  Created by iMac on 19/02/21.
//

import UIKit
import FSCalendar

class CalanderViewController: UIViewController{
    
    @IBOutlet weak var Calander: FSCalendar!
    override func viewDidLoad() {
        setGradientBackground()
        super.viewDidLoad()
    }
    override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
       }
    
    func setGradientBackground() {
        
        let colorTop =  UIColor.yellow.cgColor
       // let colorcenter = UIColor.white.cgColor
        let colorBottom = UIColor.systemPink.cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop,colorBottom]
        gradientLayer.locations = [0.0,1.0,0.0]
        gradientLayer.strokeAnimation()
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    @IBAction func BTN_ProgressView(_ sender: UIButton) {
        let  ProgressVC = self.storyboard?.instantiateViewController(withIdentifier: "ProgressVC") as! ProgressVC
        self.navigationController?.pushViewController(ProgressVC, animated: true)
        
    }
    @IBAction func BTN_FlotatingTextField(_ sender: Any) {
        let  FlotingText = self.storyboard?.instantiateViewController(withIdentifier: "FlotingTextFieldVC") as! FlotingTextFieldVC
        self.navigationController?.pushViewController(FlotingText, animated: true)
        
    }
    
    

}
