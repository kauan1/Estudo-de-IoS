//
//  ViewController.swift
//  AulaInicial
//
//  Created by Administrador  on 21/05/24.
//

import UIKit

enum Shift: String {
    case morning = "Good Morning"
    case night = "Good Night"
}

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    var shift: Shift = .morning
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        
    }
    
    func setLayout(){
        view.backgroundColor = UIColor(named: shift == .morning ? "Yellow" : "Violet")
        label.text = "\(shift.rawValue) \(name)"
        label.textColor = UIColor(named: shift == .morning ? "Orange" : "Purple")
        image.image = UIImage(named: shift == .morning ? "morning" : "night")
    }

    @IBAction func changeShift(_ sender: Any) {
        self.shift = shift == .morning ? .night: .morning
        setLayout()
    }
    
    @IBAction func changeName(_ sender: Any) {
        name = textField.text ?? ""
        textField.text = ""
        setLayout()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toDetailShift"){
            let detailShiftViewController = segue.destination as! DetailsShiftViewController
            detailShiftViewController.shift = self.shift
            
        }
    }
    
}

