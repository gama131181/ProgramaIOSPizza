//
//  ViewControllerIngredientes.swift
//  PizzaPhone
//
//  Created by adm on 30/05/16.
//  Copyright © 2016 adm. All rights reserved.
//

import UIKit

class ViewControllerIngredientes: UIViewController {

    var Tamano:String = ""
    var Masa:String = ""
    var Queso:String = ""
    var Ingredientes:Set<String> = []

    
    @IBOutlet weak var ingredienteJamon: UISwitch!
    @IBOutlet weak var ingredientePeperoni: UISwitch!
    @IBOutlet weak var ingredientePavo: UISwitch!
    @IBOutlet weak var ingredienteSalchicha: UISwitch!
    @IBOutlet weak var ingredienteAceituna: UISwitch!
    @IBOutlet weak var ingredienteCebolla: UISwitch!
    @IBOutlet weak var ingredientePimiento: UISwitch!
    @IBOutlet weak var ingredientePiña: UISwitch!
    @IBOutlet weak var ingredienteAnchoa: UISwitch!

    
    @IBOutlet weak var ConfirmarPedido: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        ConfirmarPedido.enabled=false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let siguienteConfirmacion = segue.destinationViewController as!ViewControllerConfirmar
        siguienteConfirmacion.Tamano = self.Tamano
        siguienteConfirmacion.Masa = self.Masa
        siguienteConfirmacion.Queso = self.Queso
        siguienteConfirmacion.Ingredientes = ObtieneIngredientes()
        
    }

 
    func ObtieneIngredientes() -> String
    {
        var cadResulante:String = ""
        for cad in Ingredientes
        {
            cadResulante+=cad+","
        }
        return cadResulante
    
    }
    
    
    
    
    @IBAction func AgregarJamon(sender: AnyObject) {
        if ingredienteJamon.on == true {
            if Ingredientes.count < 5 {
                 Ingredientes.insert("Jamon")
            }
           
        }
        else
        {
            if Ingredientes.contains("Jamon"){
                 Ingredientes.remove("Jamon")
            }
        
        }
        
    }
    
    
    @IBAction func AgregaPeperoni(sender: AnyObject) {
        
        if ingredientePeperoni.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Peperoni")
            }
            
        }
        else
        {
            if Ingredientes.contains("Peperoni"){
                Ingredientes.remove("Peperoni")
            }
            
        }
    }

    
    @IBAction func AgregaPavo(sender: AnyObject) {
        if ingredientePavo.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Pavo")
            }
            
        }
        else
        {
            if Ingredientes.contains("Pavo"){
                Ingredientes.remove("Pavo")
            }
            
        }

    }
    
    @IBAction func AgregaSalchicha(sender: AnyObject) {
        if ingredienteSalchicha.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Salchicha")
            }
            
        }
        else
        {
            if Ingredientes.contains("Salchicha"){
                Ingredientes.remove("Salchicha")
            }
            
        }

    }
    
    
    @IBAction func AgregaAceituna(sender: AnyObject) {
        if ingredienteAceituna.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Aceituna")
            }
            
        }
        else
        {
            if Ingredientes.contains("Aceituna"){
                Ingredientes.remove("Aceituna")
            }
            
        }

    }
    
    @IBAction func AgregaCebolla(sender: AnyObject) {
        if ingredienteCebolla.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Cebolla")
            }
            
        }
        else
        {
            if Ingredientes.contains("Cebolla"){
                Ingredientes.remove("Cebolla")
            }
            
        }

    }
    
    
    @IBAction func AgregaPimiento(sender: AnyObject) {
        if ingredientePimiento.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Pimiento")
            }
            
        }
        else
        {
            if Ingredientes.contains("Pimiento"){
                Ingredientes.remove("Pimiento")
            }
            
        }
    
    }
    
    @IBAction func AgregaPiña(sender: AnyObject) {
        if ingredientePiña.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Piña")
            }
            
        }
        else
        {
            if Ingredientes.contains("Piña"){
                Ingredientes.remove("Piña")
            }
            
        }

    }
    
    @IBAction func AgregaAnchoa(sender: AnyObject) {
        if ingredienteAnchoa.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Anchoa")
            }
            
        }
        else
        {
            if Ingredientes.contains("Anchoa"){
                Ingredientes.remove("Anchoa")
            }
            
        }

    }
    
    /*
    @IBOutlet weak var AgregaAnchoa: UISwitch!
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
