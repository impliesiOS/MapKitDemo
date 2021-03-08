//
//  FlotingTextFieldVC.swift
//  MapKitDemo
//
//  Created by iMac on 22/02/21.
//

import UIKit
import SkyFloatingLabelTextField

class FlotingTextFieldVC: UIViewController {
    
//MARK:- outlets
    
    @IBOutlet weak var TXT_FirstName: SkyFloatingLabelTextField!
    @IBOutlet weak var TXT_LastName: SkyFloatingLabelTextField!
    @IBOutlet weak var TXT_Email: SkyFloatingLabelTextField!
    @IBOutlet weak var TXT_Password: SkyFloatingLabelTextField!
    @IBOutlet weak var TXT_City: SkyFloatingLabelTextField!
    @IBOutlet weak var TXT_PhoneNumber: SkyFloatingLabelTextField!
    
    @IBOutlet weak var BTN_Submit: UIButton!
    
//MARK:- View Controller life Cycle
    
    override func viewDidLoad() {
        hideKeyboardWhenTappedAround()
        setGradientBackground()
        addDoneButtonOnKeyboard()
        super.viewDidLoad()
        
//MARK:- set delegate to Textfield
        
        TXT_FirstName.delegate = self
        TXT_LastName.delegate = self
        TXT_Email.delegate = self
        TXT_Password.delegate = self
        TXT_City.delegate = self
        TXT_PhoneNumber.delegate = self
        
////MARK:- Assign First responder to textfield
//        
//        TXT_FirstName.addTarget(TXT_LastName, action: #selector(becomeFirstResponder), for: .editingDidEndOnExit)
//        TXT_LastName.addTarget(TXT_Email, action: #selector(becomeFirstResponder), for: .editingDidEndOnExit)
//        TXT_Email.addTarget(TXT_Password, action: #selector(becomeFirstResponder), for: .editingDidEndOnExit)
//        TXT_Password.addTarget(TXT_City, action: #selector(becomeFirstResponder), for: .editingDidEndOnExit)
//        TXT_City.addTarget(TXT_PhoneNumber, action: #selector(becomeFirstResponder), for: .editingDidEndOnExit)
//        TXT_PhoneNumber.addTarget(TXT_PhoneNumber, action: #selector(becomeFirstResponder), for: .editingDidEndOnExit)
//        // Do any additional setup after loading the view.
    }
    
//MARK:- Add Done button on numeric keybord
    func addDoneButtonOnKeyboard() {
        
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
        doneToolbar.barStyle       = UIBarStyle.default
        let flexSpace              = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem  = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(FlotingTextFieldVC.doneButtonAction))
        
        var items = [UIBarButtonItem]()
        items.append(flexSpace)
        items.append(done)
        
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.TXT_PhoneNumber.inputAccessoryView = doneToolbar
    }
    @objc func doneButtonAction() {
        self.TXT_PhoneNumber.resignFirstResponder()
    }
//MARK:- Set Gradient BackGround
    
    func setGradientBackground() {
        
        let colorTop =  UIColor.yellow.cgColor
       // let colorcenter = UIColor.white.cgColor
        let colorBottom = UIColor.systemYellow.cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop,colorBottom]
        gradientLayer.locations = [0.0,1.0]
        gradientLayer.strokeAnimation()
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    @IBAction func BTN_SubmitACTION(_ sender: Any) {
    }
    
    @IBAction func BTN_ChartACTION(_ sender: Any) {
        let GotoChartVC = self.storyboard?.instantiateViewController(withIdentifier: "ChartVC") as! ChartVC
        self.navigationController?.pushViewController(GotoChartVC, animated: true)
    }
    
    @IBAction func BTN_BackACTION(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
//MARK:- Email Velidaton
    
    func emailvelidation(emailID:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailID)
    }
}
//MARK:- Text Field delegate

extension FlotingTextFieldVC: UITextFieldDelegate {
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        if textField == TXT_Email
        {
            if (TXT_Email.text!.count == 0) {
                
                TXT_Email.errorMessage = ValEmptyEmail
            }
            else if (emailvelidation(emailID: TXT_Email.text!) == false)
            {
                TXT_Email.errorMessage = ValEmail
            }
            else {
                TXT_Email.errorMessage = ""
            }
        }
       else if textField == TXT_FirstName
        {
            if (TXT_FirstName.text!.count == 0) {
                
                TXT_FirstName.errorMessage = "Enter First Name"
            }
            else {
                TXT_FirstName.errorMessage = ""
            }
        }
       else if textField == TXT_LastName
        {
            if (TXT_LastName.text!.count == 0) {

                TXT_LastName.errorMessage = "Enter Last Name"
            }
            else {
                TXT_LastName.errorMessage = ""
            }
        }
       else if textField == TXT_City
        {
            if (TXT_City.text!.count == 0) {
                
                TXT_City.errorMessage = ValEmptyCity
            }
            else {
                TXT_City.errorMessage = ""
            }
        }
       else if textField == TXT_Password
        {
            if (TXT_Password.text!.count <= 6) {
                
                TXT_Password.errorMessage = "please enter more than 6 character "
            }
            else {
                TXT_Password.errorMessage = ""
            }
        }
       else if textField == TXT_PhoneNumber
        {
            if (TXT_PhoneNumber.text!.count == 0) {
                
                TXT_PhoneNumber.errorMessage = valEmptyMno
            }
            else if TXT_PhoneNumber.text?.count ?? 0 <= 9{
                TXT_PhoneNumber.errorMessage = ValMno
            }
            else {
                TXT_PhoneNumber.errorMessage = ""
            }
        }
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        if textField ==  TXT_PhoneNumber {
        let maxLength = 10
        let currentString: NSString = TXT_PhoneNumber.text! as NSString
        let newString: NSString =
            currentString.replacingCharacters(in: range, with: string) as NSString
            return newString.length <= maxLength
        }
        if textField == TXT_Password{
            let maxLength = 15
            let currentString: NSString = TXT_Password.text! as NSString
            let newString: NSString =
                currentString.replacingCharacters(in: range, with: string) as NSString
                return newString.length <= maxLength
        }
        return true
    }
}
