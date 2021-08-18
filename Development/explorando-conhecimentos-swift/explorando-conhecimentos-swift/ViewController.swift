//
//  ViewController.swift
//  explorando-conhecimentos-swift
//
//  Created by Jonas Junior on 16/08/21.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func irParaTabela(_ sender: UIButton) {
        
//        let tableVC = UIViewController(nibName: "MyTableViewController", bundle: nil)
//        self.navigationController?.pushViewController(tableVC, animated: true)
//
        let newVC = MyTableViewController()
        navigationController?.pushViewController(newVC, animated: true)
   
//        let vc = storyboard?.instantiateViewController(identifier: "tableId") as! MyTableViewController
//        present(vc, animated: true)
        
//        let navController = UINavigationController(rootViewController: MyTableViewControlle)
//        navigationController?.pushViewController(navController, animated: true)
        print(newVC)


        
        

}

}
