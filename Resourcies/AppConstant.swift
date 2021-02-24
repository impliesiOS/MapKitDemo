//
//  AppConstant.swift
//  Physician
//
//  Created by mk on 02/01/20.
//  Copyright © 2020 mk. All rights reserved.
//

import Foundation
import UIKit
//MARK: Viewcontroller identifier
struct LoginConstant {
    static let notSatisfyingDeviceToken = "Invalid parameter not satisfying: deviceToken != nil"
    static let enterToChat = NSLocalizedString("Enter to Video Chat", comment: "")
    static let fullNameDidChange = NSLocalizedString("Full Name Did Change", comment: "")
    static let login = NSLocalizedString("Login", comment: "")
    static let checkInternet = NSLocalizedString("Please check your Internet connection", comment: "")
    static let enterUsername = NSLocalizedString("Please enter your login and username.", comment: "")
    static let shouldContainAlphanumeric = NSLocalizedString("Field should contain alphanumeric characters only in a range 3 to 20. The first character must be a letter.", comment: "")
    static let shouldContainAlphanumericWithoutSpace = NSLocalizedString("Field should contain alphanumeric characters only in a range 8 to 15, without space. The first character must be a letter.", comment: "")
    static let showUsers = "ShowUsersViewController"
    static let defaultPassword = "quickblox"
    static let infoSegue = "ShowInfoScreen"
    static let chatServiceDomain = "com.q-municate.chatservice"
    static let errorDomaimCode = -1000
}

enum ErrorDomain: UInt {
    case signUp
    case logIn
    case logOut
    case chat
}

struct LoginStatusConstant {
    static let signUp = "Signg up ..."
    static let intoChat = "Login in progress ..."
    static let withCurrentUser = "Login with current user ..."
}

let identifierwelcomevc = "WelcomeViewController"
let IdentifierStartupNavigationVC = "StartUpNavigationViewController"
let IdentifierStartUpVC = "StartUpViewController"
let IdentifierEmailVarificationVC = "emailVarificationViewController"
let IdentifierLoginVC = "LoginViewController"
let IdentifierHomeTabbarVC = "HomeTabBarViewController"
let IdentifierSignUpVC = "SignUpViewController"
let IdentifierForgotPassVC = "ForgotPasswordViewController"
let IdentifierReserPassVC = "ResetPasswordViewController"
let IdentifierRootVC = "RootViewController"
let IdentifierSidePanelVC = "SidePanelViewController"
let IdentifierHomeVC = "HomeViewController"
let IdentifierHomeNavigationVC = "HomeNavigationViewController"
let IdentifierBasicDetailVC = "BasicDetailViewController"
let IdentifierPracticeDetailVC = "PracticeDetailViewController"
let IdentifierWorkHistoryVC = "WorkHistoryViewController"
let IdentifierAvailableSlotsAndRateVC = "AvailableSlotAndRateViewController"
let IdentifierEditSlotVC = "EditSlotViewController"
let IdentifierNotificationVC = "NotificationViewController"
let IdentifierViewAllAppointmentVC = "ViewAllAppointmentViewController"
let IdentifierUpcomingAppointmentDetailsVC = "UpComingAppointmentDetailViewController"
let IdentifierPastAppointmentDetailVC = "PastAppointmentDetailViewController"
let IdentifierChatListingVC = "ChatListingViewController"
let IdentifierChatVC = "ChatViewController"
let IdentifierFinanceVC = "FinanceViewController"
let IdentifierTransctionVC = "TransactionViewController"
let IdentifierBankDetailVC = "BankDetailsViewController"
let IdentifierUpComingAppointmentVC = "UpcomingAppointmentViewController"
let IdentifierPastAppointmentVC = "PastAppointmentViewController"
let IdentifierCancelledAppointmentVC = "CancelledAppointmentViewController"
let IdentifierProfileVC = "ProfileViewController"
let IdentifierProfileBasicDetailVC = "ProfileBasicDetailViewController"
let IdentifierProfilePracticeDetailVC = "ProfilePracticeDetailViewController"
let IdentifierProfileWorkHistoryVC = "ProfileWorkHistoryViewController"
let IdentifierProfileSlotAndRateVC = "ProfileSlotAndRateViewController"
let IdentifierPatientListVC = "PatientListViewController"
let IdentifierPatientDetailVC = "PatientDetailViewController"
let IdentifierLoginNavigationVC = "LoginNavigationController"
let IdentifierTimeZoneVC = "TimeZoneViewController"
let IdentifierSettingsVC = "SettingsViewController"
let IdentifierHowToWorkVC = "HowToWorkViewController"

//MARK: api constant
//let BaseUrl = "https://inovcares.com/api/v1" //phase 2
let BaseUrl = "https://inovcares.com/api/v2" // phase 3
//let BaseUrl = "https://inovcares.com/admin/public/api/v1"
//let BaseUrl = "http://18.191.134.90/admin/public/api/v1"

let verifyEmailUrl = "/verify_email"
let loginUrl = "/login"
let registerUrl = "/register"
let VerifyEmail = "/verify_email"
let forgotPassUrl = "/forgot_password"
let ChangePassUrl = "/change_password"
let GetSpecialtiesUrl = "/doctor/specialties"
let GetSubSpecialtiesUrl = "/doctor/sub_specialties"
let BasicDetailUrl = "/doctor/basic_detail"
let PracticeDetailUrl = "/doctor/practice_detail"
let AddWorkHistoryUrl = "/doctor/work_history"
let GetAvailableSlotUrl = "/doctor/available_slots"
let SendForApprovalUrl = "/doctor/send_for_approval"
let EditSlotUrl = "/doctor/edit_slots"
let DashBoardUrl = "/doctor/dashboard"
let UpcomigAppointmentUrl = "/doctor/upcoming_appointments/"
let PastAppointmentUrl = "/doctor/past_appointments/"
let CancelAppointmentUrl = "/doctor/canceled_appointments/"
let UpcomingAppointmentDetailUrl = "/doctor/upcoming_appointment_detail/"
let pastAppointmentDetailUrl = "/doctor/past_appointment_detail/"
let GetTransctionUrl = "/doctor/transaction_list/"
let GetTransactionFilterUrl = "/doctor/transaction_filter/"
let GetProfileBasicDetailUrl = "/doctor/get_basic_detail"
let GetProfilePracticeDetailUrl = "/doctor/get_practice_detail"
let GetProfileWorkhistoryUrl = "/doctor/get_work_history"
let EditBasicDetailUrl = "/doctor/basic_detail_profile"
let EditPracticeDetailUrl = "/doctor/practice_detail"
let EditWorkHistoryDetailUrl = "/doctor/work_history_profile"
let EditHourlyRateUrl = "/doctor/edit_hourly_rate"
let EditProfileImageUrl = "/doctor/basic_detail_profile_image"
let GetAllMyPatientsUrl = "/doctor/my_patients/"
let LogoutUrl = "/logout"
let sessionUrl = "/session"
let UpdateFirebaseIdUrl = "/update_firebase_id"
let UploadDocumentUrl = "/upload_document"
let GetAllNotificationUrl = "/doctor/notifications/"
let ClearAllNotificationUrl = "/doctor/clear_notifications"
let ReadAppointmentNotificationUrl = "/doctor/read_notification"
let GetAllBankDetailUrl = "/doctor/view-bank-account"
let AddBankDetailUrl = "/doctor/add-bank-account"
let DeleteBankDetailUrl = "/doctor/delete-bank-account"
let PatientDetailurl = "/doctor/patient_detail/"
let cancelAppointmentUrl = "/doctor/cancel_appointment"
let GetTimeZoneUrl = "/timezone"
let AddNoteUrl = "/doctor/add_note"
let profileImageUrl = "https://inovcares.com/get-documents?type=profile&profie=doctor&uuid="

//MARK: validation msg
let alertTitle = "Physician"
let NetWorkmsg = "Oops! Please check your internet connection and try again!"
let serverDowmMsg = "Server may be down. please try again later"
let ValEmptyEmail = "please enter email address."
let ValEmail = "Please enter valid email address."
let ValEmptyPass = "please enter password."
let ValoldEmptypass = "Please enter old password"
let ValNewEmptypass = "Please enter new password"
let ValPasslogin = "Please enter a valid password"
let ValPass = "Password length should be 8-24 with minimun 1 numeric and 1 letter."
let ValEmptyFullname = "Please enter full name."
let ValFullName = "Please enter valid full name."
let valEmptyConfPass = "Please enter confirm password."
let valEmptyMno = "Please enter mobile number."
let ValMno = "please enter valid mobile number."
let valMatchPass = "Password Mismatch."
let OptionselectionMsg = "Please select an option"
let ValEmptyAge = "please enter age."
let ValAge = "Please enter age between 18 to 100."
let ValAddress = "Please enter address."
let Valgender = "Please select gender."
let ValImage = "Please upload one Image."
let Valusername = "Please enter username"
let ValDesignation = "Please enter designation."
let ValSpecialties = "Select Specialization."
let ValSubSpecialties = "Select Service."
let Valcertificates = "please add atleast one certificate."
let ValMaxCertificates = "You can add upto 5 certificates only."
let ValHospitalName = "Please enter hospital Name."
let ValEmptyStartYear = "Please select start year."
let ValEmptyEndYear = "Please select end year."
let ValEndYear = "Please select valid end year."
let ValStartYear = "Please select valid start year."
let ValRate = "Please enter hourly rate"
let ValAvailableSlot = "Add availability slots rate"
let AddWorkHistoryMsg = "Please add work history."
let ValEmptyAccountNo = "Please enter account number."
let ValEmptyHoldername = "Please enter holder name."
let ValEmptyRoutingNo = "Please enter routing number."
let ValRountingNo = "Routing number must have 9 digits."
let ValEmptyAddLine1 = "Please enter address."
let ValEmptyState = "Please enter state."
let ValEmptyCity = "Please enter city."
let valEmptyPostalCode = "Please enter postal code."
let ValTimeZone = "Please select TimeZone"
let ValAddnotMax = "Please enter maximum 1000 character."

//MARK:status popup
let DeclinedStaus = "Declined!"
let DeclinedStatusDes = "Your profile has been declined due to terms and conditions."
let AppointmentCancelAlert = "Cancel Appointment!"
let AppointmentCancelAlertDes = "Are you sure you want to cancel this appointment?"
let AppointmentCancelledAlert = "Cancelled"
let AppointmentCancelledAlertDes = "Your appointment has been cancelled."
let DetailneedAlert = "Need more details!"
var DetailneedAlertDes = "Admin needs more detail to approve your account."
let pendingAlert = "Pending!"
let pendingAlertDes = "Your profile is pending for approval"


//MARK:Key name
let KeyDoctorId = "doctorId"
let KeyAuthToken = "doctorAuthToken"
let KeyRedirection = "redirection"
let KeyDoctoremail = "doctoremail"
let KeyDoctorFullname = "doctorfullname"
let KeyDoctorMno = "doctorMobileNo"
let KeyFirebaseID = "firebaseId"
let KeyFCMID = "fcmId"
let KeyAccountStatus = "AccountStatus"
let KeytimeZone = "TimeZone"
let KeyBudgeCount = "RedBadge"
// MARK: cell identifier
let IdentifierSlotCell = "SlotCell"

//MARK:app delegate
let appDel = UIApplication.shared.delegate as! AppDelegate

//MARK:device UDID
let IdentifierDeviceId = UIDevice.current.identifierForVendor!.uuidString

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}

