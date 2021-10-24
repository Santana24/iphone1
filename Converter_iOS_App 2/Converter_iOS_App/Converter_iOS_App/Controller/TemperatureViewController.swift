//I, Andres Santana, student number 000780301, certify that this material is my original work.
//No other person's work has been used without due acknowledgement and I have not made my work available to anyone else.

//  TemperatureViewController.swift
//  Converter_iOS_App
//

import UIKit

//temperature page which converts user data from c to f or f to c degrees
class TemperatureViewController: UIViewController {
    
    @IBOutlet weak var enterTempratureValueTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    var input_T : Float = 0
    var output_T : Float = 0
    
    var input_T_string = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //converting c to f using formula 
    @IBAction func convertCelsiusToFahrenheitBtnAction(_ sender: UIButton){
        if enterTempratureValueTextField.text != "" || enterTempratureValueTextField.text?.isEmpty == true {
        guard let text = enterTempratureValueTextField.text else { return  }
        guard  let valueInFloat = Float(text) else { return }
        let outPutValue = (valueInFloat  * (9/5) + 32)//(valueInFloat - 32) * (5/9)
        answerLabel.text = "Your answer is : " + String(round(outPutValue*1000)/1000)
        }else{
            self.showAlert("Field Empty?", message: "Please enter value for converstion", handler: nil)
        }
    }
      //converting f to c using formula 
    @IBAction func convertFahrenheitToCelsiusBtnAction(_ sender: UIButton){
        if enterTempratureValueTextField.text != "" || enterTempratureValueTextField.text?.isEmpty == true {
        guard let text = enterTempratureValueTextField.text else { return  }
        guard  let valueInFloat = Float(text) else { return }
        let outPutValue = (valueInFloat - 32) * (5/9)//(valueInFloat  * (9/5) + 32)
        answerLabel.text = "Your answer is : " + String(round(outPutValue*1000)/1000)
        }else{
            self.showAlert("Field Empty?", message: "Please enter value for converstion", handler: nil)
        }
    }
    // clear button
    @IBAction func clearTextBtnAction(_ sender: UIButton){
        enterTempratureValueTextField.text = ""
        enterTempratureValueTextField.resignFirstResponder()
        answerLabel.text = "Your answer is : 00"
    }
    
    
    @IBAction func hideKeyboard(_ sender: UIButton){
        enterTempratureValueTextField.resignFirstResponder()
    }
}
