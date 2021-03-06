//
//  ViewControllerMasa.swift
//  PizzaPhone
//
//  Created by adm on 30/05/16.
//  Copyright © 2016 adm. All rights reserved.
//

import UIKit

class ViewControllerMasa: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    var Masa:[String]=["Delgada", "Crujiente", "Gruesa"]
    var tamano:String = ""
    var cadenaResultante = "Delgada"
    @IBOutlet weak var TipoMasa: UIPickerView!
    
    @IBOutlet weak var IrQueso: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TipoMasa.dataSource = self;
        self.TipoMasa.delegate = self;
        //IrQueso.enabled=false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let siguienteQueso = segue.destinationViewController as!ViewControllerQueso
        siguienteQueso.Tamano = self.tamano
        siguienteQueso.Masa = self.cadenaResultante
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return Masa.count;
    
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        return Masa[row]
    
    }
    
    
    
  
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        switch row {
        case 0 : cadenaResultante = "Delgada"
        case 1 : cadenaResultante = "Crujiente"
        default : cadenaResultante="Gruesa"
        }
       // mensaje(cadenaResultante)
        //IrQueso.enabled = true

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
