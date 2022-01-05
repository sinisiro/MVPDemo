import Foundation

//Presenter
class Presenter {
    let colorButtonService: ColorButtonService
    weak var view: ColorButtonView?
    
    init(colorButtonService: ColorButtonService){
        self.colorButtonService = colorButtonService
    }
    
    func setView(colorButtonView: ColorButtonView?){
        self.view = colorButtonView
    }
    
    // View를 업데이트하는
    func colorButtonSelected(colorName: String){
        colorButtonService.getColorButton(colorName: colorName) { [weak self] colorButton in
            if let colorButton = colorButton {
                self?.view?.displayColorButton(description: colorButton.description)
            }
        }
    }
}
