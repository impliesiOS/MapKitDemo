//
//  ProgressVC.swift
//  MapKitDemo
//
//  Created by iMac on 22/02/21.
//

import UIKit
import RProgressView
import SwiftSignatureView

class ProgressVC: UIViewController{

//MARK:- outlets
    
    @IBOutlet weak var ProgressbarView: UIView!
    @IBOutlet weak var SIgnetureView: SwiftSignatureView!
    
//MARK:- Vriables
    
    var progessView = RProgressView()
    let piker = UIColorPickerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SIgnetureView.layer.borderWidth = 2
        SIgnetureView.layer.borderColor = UIColor.link.cgColor
        piker.delegate = self
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        progessView.isMultiColour = true
        progessView.numberOfCircles = 3
        progessView.mainDotColor = .blue
        progessView.dotColors = [.orange, .white, .green]
        progessView.translatesAutoresizingMaskIntoConstraints = false
        
        SIgnetureView.signature?.cgImage
        // Do any additional setup after loading the view.
    }
    @IBAction func BTN_Back(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func BTN_StartAnimation(_ sender: UIButton) {
    
        progessView.startAnimating(in: ProgressbarView)
        
    }
    
    func screenShotMethod() {
        let layer = UIApplication.shared.keyWindow!.layer
        let scale = UIScreen.main.scale
        UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, scale);

        layer.render(in: UIGraphicsGetCurrentContext()!)
        let screenshot = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        UIImageWriteToSavedPhotosAlbum(screenshot, nil, nil, nil)
    }
    @IBAction func BTN_StopAnimation(_ sender: UIButton) {
        
        progessView.stopAnimating()
    }
    
    @IBAction func BTN_Clear(_ sender: UIButton) {

        SIgnetureView.clear()
    }
    @IBAction func BTN_ColorSelector(_ sender: Any) {
        
        let picker = UIColorPickerViewController()
            picker.delegate = self
            picker.selectedColor = SIgnetureView.strokeColor
            self.present(picker, animated: true, completion: nil)
    }
    @IBAction func BTN_Undo(_ sender: Any) {
        SIgnetureView.undo()
    }
    @IBAction func BTN_Redo(_ sender: Any) {
        SIgnetureView.redo()
    }
}

extension ProgressVC: UIColorPickerViewControllerDelegate {
 
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        SIgnetureView.strokeColor = viewController.selectedColor
    }
    
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        
      viewController.dismiss(animated: true, completion: nil)
     
    }
    
}
