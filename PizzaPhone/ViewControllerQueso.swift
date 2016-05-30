//
//  ViewControllerQueso.swift
//  PizzaPhone
//
//  Created by adm on 30/05/16.
//  Copyright © 2016 adm. All rights reserved.
//

import UIKit

class ViewControllerQueso: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var TipoQueso:[String]=["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    var Tamano:String = ""
    
    var Masa:String = ""
    
    var cadenaResultante:String = ""
    
    @IBOutlet weak var PickerQueso: UIPickerView!
    @IBOutlet weak var IrIngredientes: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.PickerQueso.dataSource=self
        self.PickerQueso.delegate=self
        IrIngredientes.enabled=false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let siguienteIngredientes = segue.destinationViewController as!ViewControllerIngredientes
        siguienteIngredientes.Tamano = self.Tamano
        siguienteIngredientes.Masa = self.Masa
        siguienteIngredientes.Queso=self.cadenaResultante
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return TipoQueso.count;
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        return TipoQueso[row]
        
    }
    
    
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        switch row {
        case 0 : cadenaResultante = "Mozarela"
       
        case 1 : cadenaResultante = "Chedar"
        case 2 : cadenaResultante = "Parmesano"
        default : cadenaResultante="Sin queso"
        }
        IrIngredientes.enabled = true
        mensaje(cadenaResultante)
    }
    
    func mensaje (Texto: String) {
        let alertController = UIAlertController(title: "El tamaño elegido es", message:
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
