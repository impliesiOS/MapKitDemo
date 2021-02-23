//
//  CalanderViewController.swift
//  MapKitDemo
//
//  Created by iMac on 19/02/21.
//

import UIKit
import CVCalendar

class CalanderViewController: UIViewController,MenuViewDelegate,CVCalendarViewDelegate{
    func presentationMode() -> CalendarMode {
        return .monthView
    }
    
    func firstWeekday() -> Weekday {
        return .monday
    }
    
      @IBOutlet weak var menuView: CVCalendarMenuView!
      @IBOutlet weak var calendarView: CVCalendarView!
    
    override func viewDidLoad() {
        setGradientBackground()
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        // Appearance delegate [Unnecessary]
        self.calendarView.calendarAppearanceDelegate = self

        // Animator delegate [Unnecessary]
        self.calendarView.animatorDelegate = self

        // Menu delegate [Required]
        self.menuView.menuViewDelegate = self

        // Calendar delegate [Required]
        self.calendarView.calendarDelegate = self
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()

           menuView.commitMenuViewUpdate()
           calendarView.commitCalendarViewUpdate()
       }
    
    func setGradientBackground() {
        
        let colorTop =  UIColor.white.cgColor
       // let colorcenter = UIColor.white.cgColor
        let colorBottom = UIColor.red.cgColor
                    
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
