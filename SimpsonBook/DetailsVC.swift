//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Kemal Aslan on 5.12.2022.
//

import UIKit

class DetailsVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    var selectedSimpson : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()


        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image

    }
    

   
}
