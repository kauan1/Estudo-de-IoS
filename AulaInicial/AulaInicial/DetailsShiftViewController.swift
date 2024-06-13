//
//  DetailsShiftViewController.swift
//  AulaInicial
//
//  Created by Administrador  on 30/05/24.
//

import UIKit

class DetailsShiftViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    var shift: Shift?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setLayout()
        
    }
    
    func setLayout() {
        guard let shift = shift else { return }
        self.image.image = UIImage(named: shift == .morning ? "Sunny Day" : "Star Sky")
    }

}
