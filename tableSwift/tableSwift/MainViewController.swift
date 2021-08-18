//
//  MainViewController.swift
//  tableSwift
//
//  Created by Jonas Junior on 16/08/21.
//

import UIKit

class MainViewController: UIViewController {
    
    var celulasPokemon : [PokeList] = [
        PokeList(idPokemon: "1", pokemon: "Bulbasaur", iconePokemon: "bulbasaur"),
        PokeList(idPokemon: "2", pokemon: "Ivysaur", iconePokemon: "Ivysaur"),
        PokeList(idPokemon: "3", pokemon: "Venusaur", iconePokemon: "venusaur"),
        PokeList(idPokemon: "4", pokemon: "Charmander", iconePokemon: "charmander"),
        PokeList(idPokemon: "5", pokemon: "Charmeleon", iconePokemon: "Charmeleon"),
        PokeList(idPokemon: "6", pokemon: "Charizard", iconePokemon: "charizard"),
        PokeList(idPokemon: "7", pokemon: "Squirtle", iconePokemon: "squirtle"),
        PokeList(idPokemon: "8", pokemon: "Wartortle", iconePokemon: "wartortle"),
        PokeList(idPokemon: "9", pokemon: "Blastoise", iconePokemon: "blastoise2"),
        PokeList(idPokemon: "10", pokemon: "Ivysaur", iconePokemon: "Ivysaur"), // copiado a mais \/
        PokeList(idPokemon: "11", pokemon: "Venusaur", iconePokemon: "venusaur"),
        PokeList(idPokemon: "12", pokemon: "Charmander", iconePokemon: "charmander"),
        PokeList(idPokemon: "13", pokemon: "Charmeleon", iconePokemon: "Charmeleon"),
        PokeList(idPokemon: "14", pokemon: "Charizard", iconePokemon: "charizard"),
        PokeList(idPokemon: "15", pokemon: "Squirtle", iconePokemon: "squirtle"),
        PokeList(idPokemon: "16", pokemon: "Wartortle", iconePokemon: "wartortle")
        ]
    
    var extensaoFoto : String?
    
    var indexTipo : Int = 0

    @IBOutlet weak var tableView: UITableView!
    
//    init(celulasPokemon : [PokeList], extensaoFoto : String) {
//
//        self.celulasPokemon = celulasPokemon
//        self.extensaoFoto = extensaoFoto
//    }
//
//    required init?(coder: NSCoder,celulasPokemon : [PokeList],extensaoFoto : String) {
//        fatalError("init(coder:) has not been implemented")
//        super.init()
//        self.celulasPokemon = celulasPokemon
//        self.extensaoFoto = extensaoFoto
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        registerCells()
        
    }
    
    func registerCells() {

        tableView.register(UINib(nibName: "PokemonTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.register(UINib(nibName: "TypeTableViewCell", bundle: nil), forCellReuseIdentifier: "typeCell")
    }

    
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return celulasPokemon.count
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 4 == 0 {

            let cell = tableView.dequeueReusableCell(withIdentifier: "typeCell", for: indexPath) as? TypeTableViewCell

            cell?.labelTipo?.text = "Nova Celula"

            return cell ?? UITableViewCell()

        }

        else {

            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PokemonTableViewCell

            extensaoFoto = celulasPokemon[(indexPath.row)-1].iconePokemon
            cell?.labelEsqueda?.text = celulasPokemon[(indexPath.row)-1].idPokemon
            cell?.labelMeio?.text = celulasPokemon[(indexPath.row)-1].pokemon
            cell?.imagemDireita?.image = UIImage (named: extensaoFoto!)

            return cell ?? UITableViewCell()
        }
 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

