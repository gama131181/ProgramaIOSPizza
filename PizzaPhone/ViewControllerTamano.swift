//
//  ViewControllerTamaño.swift
//  PizzaPhone
//
//  Created by adm on 30/05/16.
//  Copyright © 2016 adm. All rights reserved.
//

import UIKit

class ViewControllerTamano: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    var Medida:[String] = ["Pequeña", "Mediana", "Grande"];
    var cadenaResultante: String = "Pequeña"
  
    var filaActual : Int=0
    @IBOutlet weak var SeleccionTamano: UIPickerView!
    
    @IBOutlet weak var IrMasa: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.SeleccionTamano.dataSource = self;
        self.SeleccionTamano.delegate = self;
        //IrMasa.enabled = false
        //mensaje(cadenaResultante)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
       
        //mensaje(cadenaResultante)
        //mensaje(String (filaActual))
        //self.SeleccionTamano.selectRow(1, inComponent: 0, animated: false)
        //self.pickerView(self.SeleccionTamano , didSelectRow: 0, inComponent: 0)
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
        return Medida.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row:Int, forComponent component: Int) -> String {
      
        return Medida[row]
    }
    
    
    
    @IBOutlet weak var PickerTamano: UIPickerView!
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        switch row {
            case 0 : cadenaResultante = "Pequeña"
                     filaActual = row
            case 1 : cadenaResultante = "Mediana"
                     filaActual = row
            default : cadenaResultante="Grande"
                        filaActual = row
            
            
        }
        //let siguiente = self.storyboard?.instantiateViewControllerWithIdentifier("ViewControllerMasa") as! ViewControllerMasa
         //  let navigationController = UINavigationController(rootViewController: siguiente)
        //self.presentedViewController(navigationController, animated: true, completion: nil)
        //self.navigationController?.pushViewController(mapViewControllerObj!, animated: true)
        //let vc = ViewControllerMasa(nibName: "ViewControllerMasa", bundle: nil)
        //navigationController?.pushViewController(vc, animated: true)
        
        
        
        
        //mensaje(String (row) )

        //mensaje(cadenaResultante)

        
        
        //IrMasa.enabled = true
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
