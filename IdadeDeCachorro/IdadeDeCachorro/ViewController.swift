//
//  ViewController.swift
//  IdadeDeCachorro
//
//  Created by Administrador  on 08/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idadeCachorro: UITextField!
    @IBOutlet weak var legendaResultado: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func descobrirIdade(_ sender: Any) {
        let idadeCachorro = Int(idadeCachorro.text!)! * 7
        
        legendaResultado.text = "A idade do cachorro é: "+String(idadeCachorro)
        
    }
}

