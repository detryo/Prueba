//
//  ViewController.swift
//  PruebaDados
//
//  Created by Cristian Sedano Arenas on 15/01/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var diceImage : [ImageDice] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView.init(frame: .zero)
        tableView.delegate = self
        tableView.dataSource = self
        
        diceImage = createArray()
    }
    
    func generateRandomImage() {
    
    }
    
    func createArray() -> [ImageDice] {
        
        var diceArray: [ImageDice] = []
        
        let imageDice = ImageDice(imageDice: #imageLiteral(resourceName: "dice1"))
        let imageDice2 = ImageDice(imageDice: #imageLiteral(resourceName: "dice2"))
        let imageDice3 = ImageDice(imageDice: #imageLiteral(resourceName: "dice3"))
        let imageDice4 = ImageDice(imageDice: #imageLiteral(resourceName: "dice4"))
        let imageDice5 = ImageDice(imageDice: #imageLiteral(resourceName: "dice5"))
        let imageDice6 = ImageDice(imageDice: #imageLiteral(resourceName: "dice6"))
        
        diceArray.append(imageDice)
        diceArray.append(imageDice2)
        diceArray.append(imageDice3)
        diceArray.append(imageDice4)
        diceArray.append(imageDice5)
        diceArray.append(imageDice6)
        
        return diceArray
    }
    
    @IBAction func addRow(_ sender: UIButton) {
        diceImage.insert(ImageDice(imageDice: #imageLiteral(resourceName: "dice1")), at: 0)
        tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .right)
    }
    @IBAction func generateRandomDice(_ sender: UIButton) {
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diceImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let imageDice = diceImage[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiceCell") as! DiceCell
        
        cell.addImage(dicesImage: imageDice)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            diceImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
