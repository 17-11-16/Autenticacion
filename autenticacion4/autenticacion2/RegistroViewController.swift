//
//  RegistroViewController.swift
//  autenticacion2
//
//  Created by Macbook on 10/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController {
    
    var nombres: [String] = []
    var contraseñas: [String] = []

    @IBOutlet weak var Nombre: UITextField!
    @IBOutlet weak var Contraseña: UITextField!
    @IBOutlet weak var Contraseña2: UITextField!
    @IBOutlet weak var incorrecto: UILabel!
    @IBOutlet weak var Confirmar: UIButton!
    
    override func viewDidLoad()
    {
        incorrecto.alpha = 0
        Confirmar.alpha = 0
        let defaults = UserDefaults.standard
        
        nombres = defaults.object(forKey: "nombres") as? [String] ?? [String]()
        for a in nombres
        {
            print(a)
        }
        contraseñas = defaults.object(forKey: "contraseñas") as? [String] ?? [String]()
        for b in contraseñas
        {
            print(b)
        }
        
    }

   
    @IBAction func Registro(_ sender: UIButton)
    {
        if Contraseña.text == ""
        {
            incorrecto.alpha = 1
            incorrecto.text = "Agrega una contraseña"
        }
        else
        {
        if Contraseña.text == Contraseña2.text
        {
                incorrecto.alpha = 0
                Confirmar.alpha = 1
        }
            else
            {
                incorrecto.text = "Las contraseñas no coinciden"
                incorrecto.alpha = 1
                
            }
        }
        
    }
    
    @IBAction func Confirmar(_ sender: UIButton)
    {
        let defaults = UserDefaults.standard
        let user = Nombre.text
        let password = Contraseña.text
        
        nombres.append(user!)
        defaults.set(nombres, forKey: "nombres")
        print(nombres)
        
        contraseñas.append(password!)
        defaults.set(contraseñas, forKey: "contraseñas")
        print(contraseñas)
    }
}
