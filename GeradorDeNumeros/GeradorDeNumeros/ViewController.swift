//
//  ViewController.swift
//  GeradorDeNumeros
//
//  Created by Administrador  on 08/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var legendaResultado: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gerarNumero(_ sender: Any) {
        let numero = arc4random_uniform(11)
        legendaResultado.text = String(numero)
    
    }
    
}

