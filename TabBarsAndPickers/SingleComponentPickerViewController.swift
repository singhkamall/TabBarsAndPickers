import UIKit

class SingleComponentPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var singlePicker: UIPickerView!
    
    private let characterNames = ["Han Solo", "Luke", "Leia", "Threepio", "Lando"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func OnButonPressed(_ sender: UIButton) {
        let row = singlePicker.selectedRow(inComponent: 0)
        
        let selected =  characterNames[row]
        
        let title = "You selected \(selected)"
        
        let alert = UIAlertController(title: title, message: "Thanks for choosing", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "You're Welcome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated:true, completion: nil)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return characterNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return characterNames[row]
    }
}
