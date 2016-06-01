//
//  ViewController.swift
//  PizzaPhone
//
//  Created by adm on 29/05/16.
//  Copyright © 2016 adm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var confimacion:Bool = false
    var cadenaResultante:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }
   
    override func viewWillAppear(animated: Bool) {
        if confimacion {
            mensajeFin("Su pedido sera entregado de 10 a 15 minutos.\nSi desea realizar otro pedido, vuelva a ordenar.\nGracias!")
            confimacion = false
        }
    }
    @IBAction func Salida()
    {
       assert(false)
    }
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func regresaInicioSeleccion(segue:UIStoryboardSegue){
       // mensaje("Gracias! Su pedido sera entregado entre 10 a 15 minutos\nOtro pedido, vuelva a ordenar")
    }
    
    override func motionEnded(motion: UIEventSubtype,withEvent event: UIEvent?) {
             if motion == .MotionShake{
                
                //Comment: to terminate app, do not use exit(0) bc that is logged as a crash.
                
                UIControl().sendAction(Selector("suspend"), to: UIApplication.sharedApplication(), forEvent: nil)
            }
    }
    
    func mensajeFin (Texto: String) {
        let alertController = UIAlertController(title: "Pizza en Proceso", message:
            Texto, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

    
}

