//
//  RegistroViewController.swift
//  autenticacion2
//
//  Created by Macbook on 10/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController {

    @IBOutlet weak var Nombre: UITextField!
    @IBOutlet weak var Contraseña: UITextField!
    @IBOutlet weak var Contraseña2: UITextField!
    @IBOutlet weak var incorrecto: UILabel!
    @IBOutlet weak var Confirmar: UIButton!
    
    var registro2 = [Usuarios]()
    var deFirst : Usuarios!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        incorrecto.alpha = 0
        Confirmar.alpha = 0
    }

   
    @IBAction func Registro(_ sender: UIButton)
    {
        if Contraseña.text == Contraseña2.text
        {
            incorrecto.alpha = 0
            deFirst = Usuarios(nombre: "\(Nombre.text!)", contraseña: "\(Contraseña.text!)")
            Confirmar.alpha = 1
            
        }else{
            incorrecto.alpha = 1
            Confirmar.alpha = 0
        }
    }

}
