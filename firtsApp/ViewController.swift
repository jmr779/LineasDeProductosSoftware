//
//  ViewController.swift
//  firtsApp
//
//  Created by Aula11 on 24/9/18.
//  Copyright © 2018 Aula11Adrián Rodríguez Escudero. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: properties
    
    @IBOutlet weak var nombreLbl: UILabel!
    @IBOutlet weak var nombreTxt: UITextField!
    @IBOutlet weak var apellidoTxt: UITextField!
    
    @IBAction func setResetBtn(sender: AnyObject) {
        nombreLbl.text = "Hola desconocido";
    }
    
    @IBAction func setColorBtn(sender: AnyObject) {
        let redValue = CGFloat(drand48())
        let greenValue = CGFloat(drand48())
        let blueValue = CGFloat(drand48())
        
        self.view.backgroundColor=UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nombreTxt.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool{ // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        nombreLbl.text = "Hola <"+textField.text!+"> <"+apellidoTxt.text!+">";
    }

}

