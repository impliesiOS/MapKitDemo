//
//  LoginVC.swift
//  MapKitDemo
//
//  Created by iMac on 09/03/21.
//

import UIKit
import FirebaseAuth

class LoginVC: UIViewController {
    
//MARK:- Outlets

    @IBOutlet weak var LBL_SignIn: UILabel!
    @IBOutlet weak var LBL_YourMail: UILabel!
    @IBOutlet weak var LBL_Password: UILabel!
    @IBOutlet weak var LBL_EmailError: UILabel!
    @IBOutlet weak var LBL_PasswordError: UILabel!
    
    @IBOutlet weak var TXT_Password: UITextField!
    @IBOutlet weak var TXT_EnterMail: UITextField!
    

    @IBOutlet weak var BTN_SignIn: UIButton!
    @IBOutlet weak var BTN_OpenEYE: UIButton!
    
//MARK:- Variables
    
    var EYEIconClick = true
    
//MARK:- ViewController life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TXT_EnterMail.addTarget(TXT_Password, action: #selector(becomeFirstResponder), for: .editingDidEndOnExit)
        TXT_Password.addTarget(TXT_Password, action: #selector(becomeFirstResponder), for: .editingDidEndOnExit)
        
        TXT_EnterMail.delegate = self
        TXT_Password.delegate = self
        
        //MARK:- hide keybord function calling
        
        hideKeyboardWhenTappedAround()
        
        //MARK:-show error lable
        
        TXT_EnterMail.becomeFirstResponder()
        LBL_EmailError.isHidden = true
        LBL_PasswordError.isHidden = true
        
        //MARK:- Hide Navigation Bar In ViewController
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        //MARK:- give shadow to EmailTextField
        
        TXT_EnterMail.layer.masksToBounds = false
        TXT_EnterMail.layer.shadowColor = UIColor(red: 0.051, green: 0.2550, blue: 0.718, alpha: 0.1).cgColor
        TXT_EnterMail.layer.shadowOffset = CGSize(width: 0, height: 2)
        TXT_EnterMail.layer.shadowOpacity = 1
        TXT_EnterMail.layer.cornerRadius = 0.1
        TXT_EnterMail.layer.shadowRadius = 13
        
        //MARK:- give shadow to PassWordTextField
        
        TXT_Password.layer.masksToBounds = false
        TXT_Password.layer.shadowColor = UIColor(red: 0.051, green: 0.2550, blue: 0.718, alpha: 0.1).cgColor
        TXT_Password.layer.shadowOffset = CGSize(width: 0, height: 2)
        TXT_Password.layer.shadowOpacity = 1
        TXT_Password.layer.cornerRadius = 0.1
        TXT_Password.layer.shadowRadius = 13
        
        // Do any additional setup after loading the view.
    }
//MARK:- ACTIONS End Functions
    
//MARK:- email velidation
    
    func emailvelidation(emailID:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailID)
    }
    
    @IBAction  func Signin(_ sender: UIButton) {
        //MARK:- TextField Velidation
        
        if self.TXT_EnterMail.text == "" && self.TXT_Password.text == "" {
            let Alert: UIAlertController = UIAlertController(title: "Try again!", message: "Please Fill Up Your Details Properly",preferredStyle:.alert)
            let tryagain : UIAlertAction = UIAlertAction(title: "ok", style: .destructive, handler: {  _ in
                self.navigationController?.popToRootViewController(animated: true)
            })
            Alert.addAction(tryagain)
            self.present(Alert,animated: true,completion: nil)
            LBL_EmailError.isHidden = false
            LBL_EmailError.text = "Please enter your email"
            LBL_PasswordError.isHidden = false
            LBL_PasswordError.text = "Please enter your Password"
        }
        else if (emailvelidation(emailID: TXT_EnterMail.text!) == false){
            let alert : UIAlertController = UIAlertController(title: "Email Error", message: "Please enter velide email ", preferredStyle: .alert)
            let tryagain : UIAlertAction = UIAlertAction(title: "ok", style: .destructive, handler: {
                _ in self.navigationController?.popToRootViewController(animated: true)
            })
            alert.addAction(tryagain)
            self.present(alert,animated: true,completion: nil)
        }
        else if  TXT_Password.text?.count ?? 0 <= 6{
            let alert : UIAlertController = UIAlertController(title: "Password Error", message: "Please enter more than 6 characters ", preferredStyle: .alert)
            let tryagain : UIAlertAction = UIAlertAction(title: "ok", style: .destructive, handler: {
                _ in self.navigationController?.popToRootViewController(animated: true)
            })
            alert.addAction(tryagain)
            self.present(alert,animated: true,completion: nil)
        }
        else{
            SigninFireBase()
        }
    }
    //MARK:- Sign In Fire Base
    
    func SigninFireBase(){
        Auth.auth().signIn(withEmail: TXT_EnterMail.text!, password: TXT_Password.text!) { [weak self] authresult , err in
            guard let Strongself = self else {return}
            if let err = err {
                print(err.localizedDescription)
            }
            self!.cheakuserinfo()
        }
    }
    
    func cheakuserinfo(){
        if Auth.auth().currentUser != nil{
            print(Auth.auth().currentUser?.uid)
            }
        let  Tabbarvc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarcontroller") as! TabBarcontroller
        self.navigationController?.pushViewController(Tabbarvc, animated: true)
        
    }
    
//MARK:- Create New Account
    
    @IBAction func NewAccount(_ sender: Any) {
        let  Tabbarvc = self.storyboard?.instantiateViewController(withIdentifier: "FlotingTextFieldVC") as! FlotingTextFieldVC
        self.navigationController?.pushViewController(Tabbarvc, animated: true)
        
    }
    
    @IBAction func BTN_OpenEYEACTION(_ sender: Any) {

        if(EYEIconClick == true) {
            TXT_Password.isSecureTextEntry = false
            BTN_OpenEYE.setImage(UIImage(named: "closeview"), for: .normal)

        } else {
            TXT_Password.isSecureTextEntry = true
            BTN_OpenEYE.setImage(UIImage(named: "view"), for: .normal)
        }

        EYEIconClick = !EYEIconClick
    }
}
extension LoginVC: UITextFieldDelegate{
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        if textField == TXT_EnterMail
        {
            if (TXT_EnterMail.text!.count == 0) {
                
                LBL_EmailError.isHidden = false
                LBL_EmailError.text = "Please enter your email"
                
            }
            else if (emailvelidation(emailID: TXT_EnterMail.text!) == false)
            {
                LBL_EmailError.isHidden = false
                LBL_EmailError.text = "Please enter valid email"
            }
            else
            {
                LBL_EmailError.isHidden = true
                LBL_EmailError.text = ""
            }
            
        }
        if textField == TXT_Password
        {
            if (TXT_Password.text!.count == 0) {
                
                LBL_PasswordError.isHidden = false
                LBL_PasswordError.text = "Please enter your Password"
                
            }
            else if TXT_Password.text?.count ?? 0 <= 6{
                LBL_PasswordError.isHidden = false
                LBL_PasswordError.text = "enter more than 6 characters"
            }
            else
            {
                LBL_PasswordError.isHidden = true
                LBL_PasswordError.text = ""
            }
            
        }; return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        if textField == TXT_EnterMail
        {
            if (TXT_EnterMail.text!.count == 0) {
                
                LBL_EmailError.isHidden = false
                LBL_EmailError.text = "Please enter your email"
                
            }
            else if (emailvelidation(emailID: TXT_EnterMail.text!) == false)
            {
                LBL_EmailError.isHidden = false
                LBL_EmailError.text = "Please enter valid email"
            }
            else
            {
                LBL_EmailError.isHidden = true
                LBL_EmailError.text = ""
            }
            
        }
        if textField == TXT_Password
        {
            if (TXT_Password.text!.count == 0) {
                
                LBL_PasswordError.isHidden = false
                LBL_PasswordError.text = "Please enter your Password"
                
            }
            else if TXT_Password.text?.count ?? 0 <= 6{
                LBL_PasswordError.isHidden = false
                LBL_PasswordError.text = "enter more than 6 characters"
            }
            else
            {
                LBL_PasswordError.isHidden = true
                LBL_PasswordError.text = ""
            }
            
        }
        
        
        return true
    }
 
}
