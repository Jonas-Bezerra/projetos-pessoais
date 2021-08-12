//
//  ViewController.swift
//  taskContinue
//
//  Created by Jonas Junior on 09/08/21.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
       
    }

    @IBAction func alertUser(_ sender: Any) {
        print("alertando")
        
        let alert = UIAlertController(
            title: "Tem certeza que deseja continuar?",
            message: "Confirmar apagará seu progresso",
            preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(
                            title: NSLocalizedString("Confirmar",
                            comment: "Default action"),
                            style: .destructive,
                            handler: { _ in NSLog("O \"Confirmar\" foi pressionado.")
        }))
        
        alert.addAction(UIAlertAction(
                            title: NSLocalizedString("Cancelar",
                            comment: "Default action"),
                            style: .cancel,
                            handler: { _ in NSLog("O \"Cancelar\" foi pressionado.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func nextView(_ sender: Any) {
        print("Indo para a próxima página")
        
        let vc = storyboard?.instantiateViewController(identifier: "newVC") as! NewViewController
        present(vc, animated: true)
        
    }
}


