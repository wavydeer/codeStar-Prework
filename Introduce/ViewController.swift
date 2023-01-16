//
//  ViewController.swift
//  Introduce
//
//  Created by Malcolm Verdier on 1/15/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var schoolName: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBAction func introduceSelfDidTap(_ sender: UIButton) {
        
        // Lets us choose the title we have selected from the segmented control
                // In our example that is whether it is first, second, third or forth
                let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
                
                // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
                let introduction = "My name is \(firstName.text!) \(lastName.text!) and I attend \(schoolName.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
                
                print(introduction)
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }

    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

