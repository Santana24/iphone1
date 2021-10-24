////I, Andres Santana, student number 000780301, certify that this material is my original work.
//No other person's work has been used without due acknowledgement and I have not made my work available to anyone else.

//  DistanceViewController.swift
//  Converter_iOS_App
//

import UIKit

//distance page which converts user data from km to m distance or m to km
class DistanceViewController: UIViewController {
    
    @IBOutlet weak var enterDistanceValueTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    var input_T : Float = 0
    var output_T : Float = 0
    
    var input_T_string = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //converting km to m using formula
    @IBAction func convertKmsToMilesBtnAction(_ sender: UIButton){
        if enterDistanceValueTextField.text != "" || enterDistanceValueTextField.text?.isEmpty == true {
        guard let text = enterDistanceValueTextField.text else { return  }
        guard  let valueInFloat = Float(text) else { return }
        let outPutValue = (valueInFloat  / 1.609)
        answerLabel.text = "Your answer is : " + String(round(outPutValue*1000)/1000)
        }else{
            self.showAlert("Field Empty?", message: "Please enter value for converstion", handler: nil)
        }
    }
    //converting m to km using formula
    @IBAction func convertMilesToKmsBtnAction(_ sender: UIButton){
        if enterDistanceValueTextField.text != "" || enterDistanceValueTextField.text?.isEmpty == true {
        guard let text = enterDistanceValueTextField.text else { return  }
        guard  let valueInFloat = Float(text) else { return }
        let outPutValue = (valueInFloat * 1.609)
        answerLabel.text = "Your answer is : " + String(round(outPutValue*1000)/1000)
        }else{
            self.showAlert("Field Empty?", message: "Please enter value for converstion", handler: nil)
        }
    }
    
    @IBAction func clearTextBtnAction(_ sender: UIButton){
        enterDistanceValueTextField.text = ""
        enterDistanceValueTextField.resignFirstResponder()
        answerLabel.text = "Your answer is : 00"
    }
    
    @IBAction func hideKeyboard(_ sender: UIButton){
        enterDistanceValueTextField.resignFirstResponder()
    }
}
