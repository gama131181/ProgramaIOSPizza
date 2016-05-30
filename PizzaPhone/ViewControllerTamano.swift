//
//  ViewControllerTamaño.swift
//  PizzaPhone
//
//  Created by adm on 30/05/16.
//  Copyright © 2016 adm. All rights reserved.
//

import UIKit

class ViewControllerTamano: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    var Medida = ["Pequeña", "Mediana", "Grande"];
    var cadenaResultante: String = ""
  
    @IBOutlet weak var SeleccionTamano: UIPickerView!
    
    @IBOutlet weak var IrMasa: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.SeleccionTamano.dataSource = self;
        self.SeleccionTamano.delegate = self;
        IrMasa.enabled = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let siguienteTipoMasa=segue.destinationViewController as!ViewControllerMasa
        siguienteTipoMasa.tamano = cadenaResultante
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Medida.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        return Medida[row]
    }
    
    
    
    @IBOutlet weak var PickerTamano: UIPickerView!
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        switch row {
            case 0 : cadenaResultante = "Pequeña"
                     mensaje(cadenaResultante)
            case 1 : cadenaResultante = "Mediana"
            default : cadenaResultante="Grande"
        }
        IrMasa.enabled = true
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
