//
//  ViewController.swift
//  autenticacion2
//
//  Created by Macbook on 10/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var usuario : [Usuarios] = []
    var usuariosSave : [Usuarios] = []
    
    @IBOutlet weak var User: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        let defaults = UserDefaults.standard
//
//        usuario = defaults.object(forKey: "registro2") as? [Usuarios] ?? [Usuarios]()
//
//        print(usuario.count)
//        for item in usuario{
//            print(item)
//
//        }
       
    }
    @IBAction func unwindRegistroViewController(segue: UIStoryboardSegue)
    {
//        if let origin = segue.source as? RegistroViewController
//        {
//            let data = origin.deFirst
//            usuario.append(data!)
//            print(usuario)
//        }
    }
    
    @IBAction func unwindSalirViewController(segue: UIStoryboardSegue)
    {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
//        if segue.identifier == "alta"
//        {
//            let destination = segue.destination as! RegistroViewController
//            destination.registro2 = usuario
//        }
//
//        if segue.identifier == "iniciar"
//        {
//            let destination = segue.destination as! InicioViewController
//            
//        }
        
    }
    
   
    
    
    

}

