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
    
    var registro2 = [Usuarios]()
    var deFirst : Usuarios!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
        let defauls = UserDefaults.standard
        
        if let dato = defauls.object(forKey: "name") as? String
        {
            Nombre.text = dato
        }
        if let dato2 = defauls.object(forKey: "password") as? String
        {
            Contraseña.text = dato2
           
        }
    }

   
    @IBAction func Registro(_ sender: UIButton) {
        let defauls = UserDefaults.standard
        
        if let dato = Nombre.text
        {
            defauls.set(dato, forKey: "name")
        }
        if let dato2 = Contraseña.text
        {
            defauls.set(dato2, forKey: "password")
        }
        
        deFirst = Usuarios(nombre: "\(Nombre.text!)", contraseña: "\(Contraseña.text!)")
        
    }
    

}
