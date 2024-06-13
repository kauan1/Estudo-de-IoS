//
//  ViewController.swift
//  FrasesDoDia
//
//  Created by Administrador  on 08/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fraseDia: UILabel!
    
    let frases: [String] = ["Frase 01", "Frase 02", "Frase 03"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gerarFrase(_ sender: Any) {
        let qtd = frases.count
        let random = arc4random_uniform(UInt32(qtd))
        fraseDia.text = frases[Int(random)]
        
    }
    
}

