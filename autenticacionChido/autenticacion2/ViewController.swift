//
//  ViewController.swift
//  autenticacion2
//
//  Created by Macbook on 10/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var usuario : [String] = []
    var contraseña : [String] = []
    var a : Int!
    
    @IBOutlet weak var Aviso: UILabel!
    @IBOutlet weak var User: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func Inicio(_ sender: UIButton) {
        var bloquear = false
      
        let defaults = UserDefaults.standard
        
        usuario = defaults.array(forKey: "nombres") as? [String] ?? [String]()
        print(usuario.count)
        
        contraseña = defaults.array(forKey: "contraseñas") as? [String] ?? [String]()
        print(contraseña.count)
        
        
        if Password.text == ""
        {
            bloquear = false
            Aviso.alpha = 1
            Aviso.text = "No haz ingresado datos"
        }else{
            for i in 0...usuario.count-1
            {
                if usuario[i] == User.text
                {
                    if contraseña[i] == Password.text
                    {
                       bloquear = true
                        Aviso.alpha = 0
                        a = i
                    }
                }else{
                    Aviso.alpha = 1
                    Aviso.text = "Usuario no registrado"
                }
            }
        }
        
        if bloquear
        {
            self.performSegue(withIdentifier: "iniciar", sender: self)
            Aviso.alpha = 0
        }
        
        
    }
    
    @IBAction func unwindSalirViewController(segue: UIStoryboardSegue)
    {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "iniciar"
        {
            let destination = segue.destination as! InicioViewController
            destination.a = a
            
        }

    }
    
}

