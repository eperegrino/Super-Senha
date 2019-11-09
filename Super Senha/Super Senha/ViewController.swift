//
//  ViewController.swift
//  Super Senha
//
//  Created by Eduardo Peregrino on 08/11/19.
//  Copyright © 2019 Eduardo Peregrino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    @IBOutlet weak var swCaptitalLetters: UISwitch!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordGeneratorViewController = segue.destination as! PasswordGeneratorViewController
        
        // forma mais segura (usar if let)
        if let numberOfPasswords = Int(tfTotalPasswords.text!) {
            // se conseguir obter o valor do campo e converter para inteiro
            passwordGeneratorViewController.numberOfPasswords = numberOfPasswords
        }
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!) {
            passwordGeneratorViewController.numberOfCharacters = numberOfCharacters
        }
        passwordGeneratorViewController.useNumbers = swNumbers.isOn
        passwordGeneratorViewController.useCapitalLetters = swCaptitalLetters.isOn
        passwordGeneratorViewController.useLetters = swLetters.isOn
        passwordGeneratorViewController.useSpecialCharacters = swSpecialCharacters.isOn
        
        // forcar encerrar o modo de edicao // remove o foco e libera teclado
        view.endEditing(true)
    }
}
