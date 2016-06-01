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

    
    @IBOutlet weak var ingredienteAchoa: UISwitch!
    @IBOutlet weak var ingredientePina: UISwitch!
    @IBOutlet weak var ingredientePimiento: UISwitch!
    @IBOutlet weak var ingredienteCebolla: UISwitch!
    @IBOutlet weak var ingredienteAceituna: UISwitch!
    
    @IBOutlet weak var ingredienteJamon: UISwitch!
    
    @IBOutlet weak var ingredientePeperoni: UISwitch!

    
    @IBOutlet weak var ingredientePavo: UISwitch!
    
    @IBOutlet weak var ingredienteSalchicha: UISwitch!
    
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
    
    
    
    
    @IBAction func AgregaJamon(sender: AnyObject) {
        

        if ingredienteJamon.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Jamon")
            }
            else
            {
                ingredienteJamon.on = false
                mensaje("Ya no se pueden agregar mas ingredientes")
            }
            
        }
        else
        {
            if Ingredientes.contains("Jamon"){
                Ingredientes.remove("Jamon")
            }
            
            
        }
        verificarIngredientes()


    }
    
    
    @IBAction func AddPeperoni(sender: AnyObject) {
        
        if ingredientePeperoni.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Peperoni")
            }
            else
            {
                ingredientePeperoni.on = false
                mensaje("Ya no se pueden agregar mas ingredientes")
            }
        }
        else
        {
            if Ingredientes.contains("Peperoni"){
                Ingredientes.remove("Peperoni")
            }
            
        }
        verificarIngredientes()

    }
    
   
    @IBAction func AddPavo(sender: AnyObject) {

        if ingredientePavo.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Pavo")
            }
            else
            {
                ingredientePavo.on = false
                mensaje("Ya no se pueden agregar mas ingredientes")
            }
        }
        else
        {
            if Ingredientes.contains("Pavo"){
                Ingredientes.remove("Pavo")
            }
            
        }
       verificarIngredientes()    }
    
    
    @IBAction func AddSalchicha(sender: AnyObject) {
        
        if ingredienteSalchicha.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Salchicha")
            }
            else
            {
                ingredienteSalchicha.on = false
                mensaje("Ya no se pueden agregar mas ingredientes")
            }
        }
        else
        {
            if Ingredientes.contains("Salchicha"){
                Ingredientes.remove("Salchicha")
            }
            
        }
       verificarIngredientes()
    }
    
    
    @IBAction func AddAcituna(sender: AnyObject) {
              if ingredienteAceituna.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Aceituna")
            }
            else
            {
                ingredienteAceituna.on = false
                mensaje("Ya no se pueden agregar mas ingredientes")
            }
        }
        else
        {
            if Ingredientes.contains("Aceituna"){
                Ingredientes.remove("Aceituna")
            }
            
        }
       verificarIngredientes()

    }
    
   
    @IBAction func AddCebolla(sender: AnyObject) {
        
        if ingredienteCebolla.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Cebolla")
            }
            else
            {
                ingredienteCebolla.on = false
                mensaje("Ya no se pueden agregar mas ingredientes")
            }
        }
        else
        {
            if Ingredientes.contains("Cebolla"){
                Ingredientes.remove("Cebolla")
            }
            
        }
       verificarIngredientes()
    }
    
    
    @IBAction func AddPimiento(sender: AnyObject) {
        

        if ingredientePimiento.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Pimiento")
            }
            else
            {
                ingredientePimiento.on = false
                mensaje("Ya no se pueden agregar mas ingredientes")
            }
        }
        else
        {
            if Ingredientes.contains("Pimiento"){
                Ingredientes.remove("Pimiento")
            }
            
        }
       verificarIngredientes()
    }
    
    
    @IBAction func AddPina(sender: AnyObject) {
       
        if ingredientePina.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Piña")
            }
            else
            {
                ingredientePina.on = false
                mensaje("Ya no se pueden agregar mas ingredientes")
            }
        }
        else
        {
            if Ingredientes.contains("Piña"){
                Ingredientes.remove("Piña")
            }
            
        }
      verificarIngredientes()
    }
    
    
  
    @IBAction func AddAnchoa(sender: AnyObject) {
        
        if ingredienteAchoa.on == true {
            if Ingredientes.count < 5 {
                Ingredientes.insert("Anchoa")
            }
            else
            {
                ingredienteAchoa.on = false
                mensaje("Ya no se pueden agregar mas ingredientes")
            }
        }
        else
        {
            if Ingredientes.contains("Anchoa"){
                Ingredientes.remove("Anchoa")
            }
            
        }
        
       verificarIngredientes()
    }
    
    func verificarIngredientes()
    {
        if Ingredientes.count > 0 {ConfirmarPedido.enabled=true}
        else {ConfirmarPedido.enabled=false}

    }
    func mensaje (Texto: String) {
        let alertController = UIAlertController(title: "Advertencia",
                                                message:Texto,
                                                preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Cerrar",
                                                style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
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
