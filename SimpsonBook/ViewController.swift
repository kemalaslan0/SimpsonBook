//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Kemal Aslan on 5.12.2022.
//MODEL OLUŞTURUP TABLEVİEW MANTIĞINI ÖĞRENDİM

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var mySimpson = [Simpson]()
    var chosenSimpson : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        let homer = Simpson(simpname: "Homer Simpson", simpjob: "Nuclear Safety", simpimage: UIImage(named: "homer")!)
        let marge = Simpson(simpname: "Marge Simpson", simpjob: "Housewife", simpimage: UIImage(named: "marge")!)
        let bart = Simpson(simpname: "Bart Simpson", simpjob: "Student", simpimage: UIImage(named: "bart")!)
        let lisa = Simpson(simpname: "Lisa Simpson", simpjob: "Student", simpimage: UIImage(named: "lisa")!)
        let maggie = Simpson(simpname: "Maggie Simpson", simpjob: "Baby", simpimage: UIImage(named: "maggie")!)
        mySimpson.append(homer)
        mySimpson.append(marge)
        mySimpson.append(bart)
        mySimpson.append(lisa)
        mySimpson.append(maggie)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySimpson[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpson[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimpson
            
            
        }
    }
    
}

