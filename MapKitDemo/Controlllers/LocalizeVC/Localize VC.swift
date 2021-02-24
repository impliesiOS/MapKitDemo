//
//  Localize VC.swift
//  MapKitDemo
//
//  Created by iMac on 23/02/21.
//

import UIKit

class Localize_VC: UIViewController {

//MARK:- Outlets
    
    @IBOutlet weak var LBL_Name: UILabel!
    @IBOutlet weak var LBL_Surname: UILabel!
    @IBOutlet weak var LBL_Hello: UILabel!
    @IBOutlet weak var LBL_HowAreYou: UILabel!
    @IBOutlet weak var LBL_Nice: UILabel!
    
//MARK:- View Controlller Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LBL_Name.text = NSLocalizedString("My Name is Karan", comment: "")  //"My Name is karan"
        LBL_Surname.text = NSLocalizedString("My Surname is Chodavadiya", comment: "") //"My Surname is Chodavadiya"
        LBL_Hello.text = NSLocalizedString("hello", comment: "") //"hello"
        LBL_HowAreYou.text = NSLocalizedString("How Are you", comment: "") //"How Are you"
        LBL_Nice.text = NSLocalizedString("Nice", comment: "") //"Nice"
        // Do any additional setup after loading the view.
    }
    
}
