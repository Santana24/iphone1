//I, Andres Santana, student number 000780301, certify that this material is my original work.
//No other person's work has been used without due acknowledgement and I have not made my work available to anyone else.

//  CurrencyViewController.swift
//  Converter_iOS_App
//

import UIKit

//currency page which converts user data from usd to cad or cad to usd
class CurrencyViewController: UIViewController {
    
    @IBOutlet weak var enterAmountValueTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    let currencyConverter = CurrencyConverter()
    
    var input_T : Float = 0
    var output_T : Float = 0
    
    var input_T_string = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //converting cad to usd using formula
    @IBAction func convertCADtoUSDBtnAction(_ sender: UIButton){
        
        if enterAmountValueTextField.text != "" || enterAmountValueTextField.text?.isEmpty == true {
            
           guard let text = enterAmountValueTextField.text else { return  }
           guard  let valueInFloat = Double(text) else { return }
    
            currencyConverter.updateExchangeRates(completion: {

                  let doubleResult = self.currencyConverter.convert(valueInFloat, valueCurrency: .CAD, outputCurrency: .USD)
                  guard let stringResult = doubleResult else { return  }
    
                  DispatchQueue.main.async {
                     let text =  Formatter.string(from: stringResult)
                      self.answerLabel.text = "Your answer is : " + text
                  }
              })
            
        }else{
            self.showAlert("Field Empty?", message: "Please enter value for converstion", handler: nil)
        }
    }
    //converting usd to cad formula
    @IBAction func convertUSDtoCADBtnAction(_ sender: UIButton){
        
        if enterAmountValueTextField.text != "" || enterAmountValueTextField.text?.isEmpty == true {
            
           guard let text = enterAmountValueTextField.text else { return  }
           guard  let valueInFloat = Double(text) else { return }
    
            currencyConverter.updateExchangeRates(completion: {

                  let doubleResult = self.currencyConverter.convert(valueInFloat, valueCurrency: .USD, outputCurrency: .CAD)
                  guard let stringResult = doubleResult else { return  }
    
                  DispatchQueue.main.async {
                     let text =  Formatter.string(from: stringResult)
                      self.answerLabel.text = "Your answer is : " + text
                  }
              })
            
        }else{
            self.showAlert("Field Empty?", message: "Please enter value for converstion", handler: nil)
        }
    }

    @IBAction func clearTextBtnAction(_ sender: UIButton){
        enterAmountValueTextField.text = ""
        enterAmountValueTextField.resignFirstResponder()
        answerLabel.text = "Your answer is : 00"
    }
    
    @IBAction func hideKeyboard(_ sender: UIButton){
        enterAmountValueTextField.resignFirstResponder()
    }
}

