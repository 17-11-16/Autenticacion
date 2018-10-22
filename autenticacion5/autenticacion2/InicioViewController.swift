//
//  InicioViewController.swift
//  autenticacion2
//
//  Created by Macbook on 17/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController {
    
    var ingresado: [String] = []
    var nombres: [String] = []
    var contraseñas: [String] = []
    
    @IBOutlet weak var Alta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        if  (nombres == ingresado && contraseñas == ingresado){
        ingresado = defaults.array(forKey: "nombres") as? [String] ?? [String]()
        print(ingresado.count)
        Alta.text = "\(ingresado[0])"
        }else{
            
        }
    
    }

    @IBAction func Regresar(_ sender: UIButton) {
    }
    
}
