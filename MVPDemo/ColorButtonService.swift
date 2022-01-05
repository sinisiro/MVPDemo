import Foundation

class ColorButtonService {
    func getColorButton(colorName: String, callback: (ColorButton?) -> Void){
        let colorButtons = [
            ColorButton(colorName: "Blue", description: "Selected Blue Button!!"),
            ColorButton(colorName: "Green", description: "Selected Green Button!!")
        ]
        
        if let foundColorButton = colorButtons.first(where: { $0.colorName == colorName }) {
            callback(foundColorButton)
        }else{
            callback(nil)
        }
    }
}
