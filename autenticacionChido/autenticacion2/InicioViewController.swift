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
    var a : Int!

    
    @IBOutlet weak var Alta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        

        ingresado = defaults.array(forKey: "nombres") as? [String] ?? [String]()
        print(ingresado.count)
        Alta.text = "¡Bienvenido \(ingresado[a])!"

    
    }
    
}
