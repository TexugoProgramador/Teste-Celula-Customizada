//
//  ViewController.swift
//  testeTabelaCustomizada
//
//  Created by Humberto Puccinelli on 05/05/2018.
//  Copyright © 2018 Crosoften. All rights reserved.
//

import UIKit


class CelulaAlterada: UITableViewCell {
    
    var valorPAssado = Int()
    @IBOutlet weak var campoTexto: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var meuSwitch: UISwitch!
    
    @IBAction func mudouSwitch(_ sender: UISwitch) {
        print(valorPAssado)
    }
    
    
}


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tabela: UITableView!
    let arrayDados = ["1","2","3","1","2","3","1","2","3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabela.dataSource = self
        tabela.delegate = self
        tabela.rowHeight = 132
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDados.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath) as! CelulaAlterada
        celula.campoTexto.text = arrayDados[indexPath.row]
        celula.valorPAssado = 83
        
        
        return celula
    }
    
}

