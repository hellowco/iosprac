//
//  AddAlertViewController.swift
//  DrinkWater
//
//  Created by 권성은 on 2021/11/15.
//

import UIKit

class AddAlertViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    var datePicked: ((_ date: Date) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func dismissButtonTapped(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        datePicked?(datePicker.date)
        self.dismiss(animated: true, completion: nil)
    }
}
