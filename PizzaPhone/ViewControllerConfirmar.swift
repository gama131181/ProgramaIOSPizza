//
//  ViewControllerConfirmar.swift
//  PizzaPhone
//
//  Created by adm on 30/05/16.
//  Copyright © 2016 adm. All rights reserved.
//

import UIKit

class ViewControllerConfirmar: UIViewController {
    
    var Tamano:String = ""
    var Masa:String = ""
    var Queso:String = ""
    var Ingredientes:String = ""
    
    @IBOutlet weak var confirmaTamano: UITextField!
    
    @IBOutlet weak var confirmaMasa: UITextField!
    
    @IBOutlet weak var confirmaQueso: UITextField!
    
    @IBOutlet weak var confirmaIngredientes: UITextView!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.confirmaTamano.text = Tamano
        self.confirmaMasa.text = Masa
        self.confirmaQueso.text = Queso
        self.confirmaIngredientes.text = Ingredientes
        // Do any additional setup after loading the view.
        //self.confirmaIngredientes.text="Jamon, Queso"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Enviar(sender: AnyObject) {
        //mensaje("Desea enviar los ingredientes")
    
        let alert = UIAlertController(title: "UIAlertController", message: "Tus ingredientes son los correctos, envia a cocina", preferredStyle: UIAlertControllerStyle.Alert)
        
        // add the actions (buttons)
        alert.addAction(UIAlertAction(title: "Continua", style: UIAlertActionStyle.Default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancela", style: UIAlertActionStyle.Cancel, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
    
    }
    func mensaje (Texto: String) {
        let alertController = UIAlertController(title: "Pizza en Proceso", message:
            Texto, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Cerrar", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
