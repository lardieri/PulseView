//
//  ViewController.swift
//
//  © 2022 Stephen Lardieri
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pulseView: PulseView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        pulseView.pulse()
    }

}

