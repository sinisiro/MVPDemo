import UIKit


// View
class ViewController: UIViewController, ColorButtonView {

    @IBOutlet weak var textLabel: UILabel!
    
    let presenter = Presenter(colorButtonService: ColorButtonService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        presenter.setView(colorButtonView: self)
    }

    // 사용자 입력이 들어오면, Presenter를 호출.
    @IBAction func selectedBlueButton(_ sender: Any) {
        presenter.colorButtonSelected(colorName: "Blue")
    }
    
    // 사용자 입력이 들어오면, Presenter를 호출.
    @IBAction func selectedGreenButton(_ sender: Any) {
        presenter.colorButtonSelected(colorName: "Green")
    }
    
    // Presenter로부터 호출되는 메소드
    func displayColorButton(description: String) {
        textLabel.text = description
    }
}
