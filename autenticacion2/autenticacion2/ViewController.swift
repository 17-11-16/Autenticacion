//
//  ViewController.swift
//  autenticacion2
//
//  Created by Macbook on 10/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var usuario = [Usuarios]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func unwindRegistroViewController(segue: UIStoryboardSegue)
    {
        if let origin = segue.source as? RegistroViewController
        {
            let data = origin.deFirst
            usuario.append(data!)
            print(usuario)
        }
    }
    
    @IBAction func unwindSalirViewController(segue: UIStoryboardSegue)
    {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "alta"
        {
            let destination = segue.destination as! RegistroViewController
            destination.registro2 = usuario
        }
        
    }



}

