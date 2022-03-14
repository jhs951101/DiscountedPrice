import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var discountTxt: UITextField!
    @IBOutlet weak var resultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLbl.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }

    @IBAction func calculateDiscountedPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let discounnt = Double(discountTxt.text!)!
        
        let discountedPrice = price - price * discounnt / 100

        resultLbl.text = "$\(discountedPrice)"
    }
    
    /*@IBAction func exitButtonClicked(_ sender: Any) {
        exit(0);
    }*/
}
