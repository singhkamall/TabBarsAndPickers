//
//  DatePickerViewController.swift
//  TabBarsAndPickers
//
//  Created by Student on 2017-10-11.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false)
    }
    
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let date = datePicker.date
        
        let message =  "The date and Time you selected is \(date)"
        
        let alert = UIAlertController(title: "Date and Time Selected",
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "That's so true",
                                   style: .default,
                                   handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        // print(message)
    }
}
